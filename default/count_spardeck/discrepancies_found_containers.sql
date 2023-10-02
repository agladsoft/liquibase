CREATE OR REPLACE VIEW default.discrepancies_found_containers
AS
WITH group_by_date AS
(
  SELECT
    operator,
    line_unified,
    vessel,
    ship_name_unified,
    atb_moor_pier,
    shipment_date,
    month,
    year,
    total_volume_in,
    count_container,
    toInt32(total_volume_in) - count_container as delta_count
  FROM reference_spardeck_unified
  LEFT JOIN import_nle_spardeck AS ins ON
    reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
  WHERE shipment_date BETWEEN atb_moor_pier - 4 and atb_moor_pier + 4
)
SELECT * from group_by_date
UNION ALL
SELECT *
FROM (
    SELECT
        operator,
        line_unified,
        vessel,
        ship_name_unified,
        atb_moor_pier,
        shipment_date,
        month,
        year,
        total_volume_in,
        count_container,
        toInt32(total_volume_in) - count_container as delta_count
    FROM reference_spardeck_unified
    LEFT JOIN import_nle_spardeck AS ins ON
        reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
        AND atb_moor_pier = ins.shipment_date
    WHERE ins.count_container = 0
    )
WHERE NOT (operator, vessel, atb_moor_pier) IN (
    SELECT operator, vessel, atb_moor_pier
    FROM group_by_date
    GROUP BY operator, vessel, atb_moor_pier
)
AND NOT (vessel, atb_moor_pier) IN (
    SELECT vessel, atb_moor_pier
    FROM not_coincidences_by_params
    GROUP BY vessel, atb_moor_pier
)