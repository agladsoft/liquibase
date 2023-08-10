CREATE OR REPLACE VIEW default.not_coincidences_by_params
AS SELECT *
FROM (
    SELECT
        operator,
        vessel,
        ship_name_unified,
        atb_moor_pier,
        month,
        year,
        total_volume_in,
        count_container
    FROM reference_spardeck_unified
    LEFT JOIN import_nle_spardeck AS ins ON
        reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
        AND operator = ins.line_unified
        AND atb_moor_pier = ins.shipment_date
    WHERE ins.count_container = 0
    )
WHERE NOT (operator, ship_name_unified, atb_moor_pier, total_volume_in) IN (
    SELECT operator, ship_name_unified, atb_moor_pier, total_volume_in
    FROM discrepancies_found_containers
    GROUP BY operator, ship_name_unified, atb_moor_pier, total_volume_in
);