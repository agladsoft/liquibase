CREATE LIVE VIEW IF NOT EXISTS default.vsk_imp_view_cross_rzhd_ktk WITH REFRESH 86400
AS SELECT
    vsk.month AS month,
    vsk.year AS year,
    vsk.container_number AS container_number,
    vsk.goods_name AS goods_name,
    vsk.tnved AS tnved,
    vsk.consignee_name_unified AS company_name_unified,
    vsk.consignee_inn AS company_inn,
    vsk.tracking_seaport_unified AS tracking_seaport_unified,
    vsk.tracking_country_unified AS tracking_country_unified,
    vsk.line_unified AS line_unified,
    vsk.container_type_unified AS container_type_unified,
    vsk.container_size AS container_size,
    vsk.terminal AS terminal,
    vsk.destination_station AS destination_station,
    vsk.station_ukp AS station_ukp,
    vsk.direction AS direction,
    ktk.departure_month AS departure_month,
    ktk.departure_year AS departure_year,
    ktk.departure_date AS departure_date,
    ktk.container_no AS container_no,
    ktk.cargo_according_to_the_harmonized_nomenclature_of_goods_gng AS cargo_according_to_the_harmonized_nomenclature_of_goods_gng,
    ktk.cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng AS cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng,
    ktk.common_shipper AS common_shipper,
    ktk.common_consignee AS common_consignee,
    ktk.departure_station_of_the_rf AS departure_station_of_the_rf,
    ktk.rf_destination_station AS rf_destination_station,
    ktk.type_of_transportation AS type_of_transportation,
    ktk.container_type_unified AS ktk_container_type_unified,
    ktk.name_of_cargo AS name_of_cargo,
    ktk.departure_region AS departure_region,
    ktk.destination_region AS destination_region,
    ktk.departure_road AS road,
    mcv.manager AS manager,
    mcv.department AS department
FROM default.import_vsk_enriched AS vsk
INNER JOIN rzhd.rzhd_ktk_view AS ktk ON (vsk.year = ktk.departure_year)
    AND (vsk.month = ktk.departure_month) AND (vsk.container_number = ktk.container_no)
    AND (ktk.common_consignee != 'ООО "ВСК"') AND (vsk.is_empty = FALSE)
    AND ktk.name_of_cargo not in ('КОНТ УН ПРИВ', 'КОНТЕЙН СП ПРИВ', 'КОНТ УН НОВЫЕ')
LEFT JOIN crm.managers_clients_view AS mcv
	ON vsk.consignee_inn = mcv.kc_inn
WHERE (ktk.departure_station_of_the_rf ILIKE '%НАХОДКА%') AND (vsk.year > 2022) AND (ktk.departure_year > 2022) AND (vsk.direction = 'import')
GROUP BY
    vsk.month,
    vsk.year,
    vsk.container_number,
    vsk.goods_name,
    vsk.tnved,
    vsk.consignee_name_unified,
    vsk.consignee_inn,
    vsk.tracking_seaport_unified,
    vsk.tracking_country_unified,
    vsk.line_unified,
    vsk.container_type_unified,
    vsk.container_size,
    vsk.terminal,
    vsk.destination_station,
    vsk.station_ukp,
    vsk.direction,
    ktk.departure_month,
    ktk.departure_year,
    ktk.departure_date,
    ktk.container_no,
    ktk.cargo_according_to_the_harmonized_nomenclature_of_goods_gng,
    ktk.cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng,
    ktk.name_of_cargo,
    ktk.common_shipper,
    ktk.common_consignee,
    ktk.departure_station_of_the_rf,
    ktk.rf_destination_station,
    ktk.type_of_transportation,
    ktk.container_type_unified,
    ktk.name_of_cargo,
    ktk.departure_region,
    ktk.destination_region,
    ktk.departure_road,
    mcv.manager,
    mcv.department
SETTINGS
allow_experimental_live_view = 1