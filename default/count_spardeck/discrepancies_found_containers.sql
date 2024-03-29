CREATE OR REPLACE VIEW default.discrepancies_found_containers
AS
WITH exist_data_by_date AS
(
    SELECT
        direction,
        operator,
        line_unified,
        vessel,
        ship_name_unified,
        atb_moor_pier,
        shipment_date,
        month,
        year,
        total_volume_in,
        total_volume_out,
        count_container,
        if(direction = 'import', toInt32(total_volume_in) - count_container, toInt32(total_volume_out) - count_container) as delta_count
    FROM reference_spardeck_unified
    LEFT JOIN nle_spardeck AS ins ON
        reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
    WHERE shipment_date BETWEEN atb_moor_pier - 4 and atb_moor_pier + 4
),
no_data_by_date_but_in_month AS
(
    SELECT
        'import' AS direction,
        operator,
        line_unified,
        vessel,
        ship_name_unified,
        atb_moor_pier,
        shipment_date,
        month,
        year,
        total_volume_in,
        total_volume_out,
        count_container,
        toInt32(total_volume_in) - count_container as delta_count
    FROM reference_spardeck_unified
    LEFT JOIN nle_spardeck AS ins ON
        reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
        AND atb_moor_pier = ins.shipment_date
    UNION ALL
    SELECT
        'export' AS direction,
        operator,
        line_unified,
        vessel,
        ship_name_unified,
        atb_moor_pier,
        shipment_date,
        month,
        year,
        total_volume_in,
        total_volume_out,
        count_container,
        toInt32(total_volume_out) - count_container as delta_count
    FROM reference_spardeck_unified
    LEFT JOIN nle_spardeck AS ins ON
        reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
        AND atb_moor_pier = ins.shipment_date
    WHERE ins.count_container = 0
)
SELECT * FROM exist_data_by_date
UNION ALL
SELECT * FROM no_data_by_date_but_in_month
WHERE NOT (operator, vessel, atb_moor_pier) IN (
    SELECT operator, vessel, atb_moor_pier
    FROM exist_data_by_date
    GROUP BY operator, vessel, atb_moor_pier
)
AND NOT (vessel, atb_moor_pier) IN (
    SELECT vessel, atb_moor_pier
    FROM not_found_containers
    GROUP BY vessel, atb_moor_pier
)