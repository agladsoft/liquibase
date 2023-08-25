CREATE OR REPLACE VIEW default.discrepancies_found_containers
AS SELECT
    operator,
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
ORDER BY operator