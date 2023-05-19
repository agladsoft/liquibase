CREATE OR REPLACE VIEW rzhd.rzhd_weekly_view
AS SELECT
    rzhd_weekly.wagon_number AS wagon_number,
    rzhd_weekly.wagon_type AS wagon_type,
    rzhd_weekly.wagon_subgenus AS wagon_subgenus,
    rzhd_weekly.type_of_wagon_according_to_co29 AS type_of_wagon_according_to_co29,
    rzhd_weekly.wagon_subtype_according_to_co29 AS wagon_subtype_according_to_co29,
    rzhd_weekly.code_of_conditional_type_of_wagon AS code_of_conditional_type_of_wagon,
    rzhd_weekly.conditional_wagon_type AS conditional_wagon_type,
    rzhd_weekly.load_capacity AS load_capacity,
    rzhd_weekly.state_owner_of_the_wagon AS state_owner_of_the_wagon,
    rzhd_weekly.wagon_ownership_sign AS wagon_ownership_sign,
    rzhd_weekly.sign_of_a_lease AS sign_of_a_lease,
    rzhd_weekly.sign_of_the_principal AS sign_of_the_principal,
    rzhd_weekly.subsidiary_and_affiliate_code_of_rzd AS subsidiary_and_affiliate_code_of_rzd,
    rzhd_weekly.wagon_operator AS wagon_operator,
    rzhd_weekly.the_owner_of_the_wagon_according_to_the_internal_directory AS the_owner_of_the_wagon_according_to_the_internal_directory,
    rzhd_weekly.wagon_owner_according_to_egrpo AS wagon_owner_according_to_egrpo,
    rzhd_weekly.leaseholder AS leaseholder,
    rzhd_weekly.wagon_check_in_road AS wagon_check_in_road,
    rzhd_weekly.wagon_registration_station AS wagon_registration_station,
    rzhd_weekly.wagon_check_in_road_on_lease AS wagon_check_in_road_on_lease,
    rzhd_weekly.check_in_station_for_wagon_rental AS check_in_station_for_wagon_rental,
    rzhd_weekly.container_prefix AS container_prefix,
    rzhd_weekly.container_no AS container_no,
    rt.container_tonnage_unified AS container_tonnage_unified,
    if(rzhd_weekly.quantity_of_containers = 0, 0, intDiv(rt.container_tonnage_unified, 20)) AS teu,
    rct.container_type_unified AS container_type_unified,
    rzhd_weekly.document_no AS document_no,
    rzhd_weekly.type_of_transportation AS type_of_transportation,
    rzhd_weekly.type_of_communication_between_countries_by_rail AS type_of_communication_between_countries_by_rail,
    rzhd_weekly.dispatch_category AS dispatch_category,
    rzhd_weekly.type_of_message AS type_of_message,
    rzhd_weekly.park_type AS park_type,
    rzhd_weekly.distance_zone_of_grouping_by_mileage AS distance_zone_of_grouping_by_mileage,
    rzhd_weekly.sign_of_non_credited_cargo_at_border_crossings AS sign_of_non_credited_cargo_at_border_crossings,
    rzhd_weekly.sign_of_the_exclusive_tariff AS sign_of_the_exclusive_tariff,
    rzhd_weekly.shipper_okpo AS shipper_okpo,
    rzhd_weekly.shipper_according_to_egrpo AS shipper_according_to_egrpo,
    rzhd_weekly.shipper_by_puzt AS shipper_by_puzt,
    if(shipper_by_puzt is not null or shipper_by_puzt != 'НЕИЗВЕСТЕН',
        shipper_by_puzt, shipper_according_to_egrpo) AS common_shipper,
    rzhd_weekly.consignee_okpo AS consignee_okpo,
    rzhd_weekly.consignee_according_to_egrpo AS consignee_according_to_egrpo,
    rzhd_weekly.consignee_by_puzt AS consignee_by_puzt,
    if(consignee_by_puzt is not null or consignee_by_puzt != 'НЕИЗВЕСТЕН',
        consignee_by_puzt, consignee_according_to_egrpo) AS common_consignee,
    rzhd_weekly.state_of_departure AS state_of_departure,
    rzhd_weekly.sign_of_the_state_of_departure AS sign_of_the_state_of_departure,
    rzhd_weekly.subject_of_departure_of_the_rf AS subject_of_departure_of_the_rf,
    rzhd_weekly.departure_region AS departure_region,
    rzhd_weekly.departure_road AS departure_road,
    rzhd_weekly.departure_station_code_of_rf AS departure_station_code_of_rf,
    rzhd_weekly.departure_station_of_the_rf AS departure_station_of_the_rf,
    rzhd_weekly.sign_of_departure_station_of_the_rf AS sign_of_departure_station_of_the_rf,
    rzhd_weekly.sign_of_the_border_crossing_of_the_departure_of_the_rf AS sign_of_the_border_crossing_of_the_departure_of_the_rf,
    rzhd_weekly.administration_of_the_cis_departure_station AS administration_of_the_cis_departure_station,
    rzhd_weekly.departure_station_code_of_cis AS departure_station_code_of_cis,
    rzhd_weekly.cis_departure_station AS cis_departure_station,
    rzhd_weekly.sign_of_the_departure_station_of_the_cis AS sign_of_the_departure_station_of_the_cis,
    rzhd_weekly.sign_of_the_border_crossing_of_the_departure_of_the_cis AS sign_of_the_border_crossing_of_the_departure_of_the_cis,
    rzhd_weekly.state_of_destination AS state_of_destination,
    rzhd_weekly.sign_of_the_state_of_destination AS sign_of_the_state_of_destination,
    rzhd_weekly.destination_subject_of_the_rf AS destination_subject_of_the_rf,
    rzhd_weekly.destination_region AS destination_region,
    rzhd_weekly.destination_road AS destination_road,
    rzhd_weekly.destination_station_code_of_rf AS destination_station_code_of_rf,
    rzhd_weekly.rf_destination_station AS rf_destination_station,
    rzhd_weekly.sign_of_destination_station_of_the_rf AS sign_of_destination_station_of_the_rf,
    rzhd_weekly.sign_of_the_border_crossing_of_the_destination_of_the_rf AS sign_of_the_border_crossing_of_the_destination_of_the_rf,
    rzhd_weekly.administration_of_the_cis_destination_station AS administration_of_the_cis_destination_station,
    rzhd_weekly.destination_station_code_of_cis AS destination_station_code_of_cis,
    rzhd_weekly.cis_destination_station AS cis_destination_station,
    rzhd_weekly.sign_of_destination_station_of_the_cis AS sign_of_destination_station_of_the_cis,
    rzhd_weekly.sign_of_the_border_crossing_of_the_destination_of_the_cis AS sign_of_the_border_crossing_of_the_destination_of_the_cis,
    rzhd_weekly.cargo_code_of_the_etsng AS cargo_code_of_the_etsng,
    rzhd_weekly.name_of_cargo AS name_of_cargo,
    rzhd_weekly.cargo_group AS cargo_group,
    rzhd_weekly.sub_group_of_cargo AS sub_group_of_cargo,
    rzhd_weekly.cargo_class AS cargo_class,
    rzhd_weekly.group_of_cargo_according_to_the_operational_nomenclature AS group_of_cargo_according_to_the_operational_nomenclature,
    rzhd_weekly.group_of_cargo_co21 AS group_of_cargo_co21,
    rzhd_weekly.group_of_cargo_according_to_go6 AS group_of_cargo_according_to_go6,
    rzhd_weekly.cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng AS cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng,
    rzhd_weekly.cargo_according_to_the_harmonized_nomenclature_of_goods_gng AS cargo_according_to_the_harmonized_nomenclature_of_goods_gng,
    rzhd_weekly.cargo_code_okved AS cargo_code_okved,
    rzhd_weekly.cargo_okved AS cargo_okved,
    rzhd_weekly.cargo_group_okved AS cargo_group_okved,
    rzhd_weekly.cargo_subgroup_okved AS cargo_subgroup_okved,
    rzhd_weekly.previously_transported_cargo AS previously_transported_cargo,
    rzhd_weekly.previously_transported_cargo_code AS previously_transported_cargo_code,
    CASE
        WHEN like(payer_of_the_railway_tariff, '%ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ%')
            THEN replace(payer_of_the_railway_tariff, 'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ', 'ООО')
        WHEN like(payer_of_the_railway_tariff, '%АКЦИОНЕРНОЕ ОБЩЕСТВО%')
            THEN replace(payer_of_the_railway_tariff, 'АКЦИОНЕРНОЕ ОБЩЕСТВО', 'АО')
        WHEN like(payer_of_the_railway_tariff, '%ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО%')
            THEN replace(payer_of_the_railway_tariff, 'ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО', 'ПАО')
        WHEN like(payer_of_the_railway_tariff, '%ЗАКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО%')
            THEN replace(payer_of_the_railway_tariff, 'ЗАКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО', 'ЗАО')
        WHEN like(payer_of_the_railway_tariff, '%ТОВАРИЩЕНСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ%')
            THEN replace(payer_of_the_railway_tariff, 'ТОВАРИЩЕНСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ', 'ТОО')
        ELSE payer_of_the_railway_tariff
    END AS payer_of_the_railway_tariff,
    rzhd_weekly.type_of_accounting AS type_of_accounting,
    rzhd_weekly.sign_of_the_place_of_settlement AS sign_of_the_place_of_settlement,
    rzhd_weekly.exceptional_rate_code AS exceptional_rate_code,
    rzhd_weekly.currency_code AS currency_code,
    rzhd_weekly.tariff_sign AS tariff_sign,
    rzhd_weekly.carriage_fee AS carriage_fee,
    rzhd_weekly.discount_amount AS discount_amount,
    rzhd_weekly.ferry_ust_luga_baltiysk AS ferry_ust_luga_baltiysk,
    rzhd_weekly.departure_date AS departure_date,
    rzhd_weekly.departure_day_report AS departure_day_report,
    rzhd_weekly.number_of_cargo_acceptances_for_transportation AS number_of_cargo_acceptances_for_transportation,
    rzhd_weekly.departure_month AS departure_month,
    rzhd_weekly.departure_year AS departure_year,
    rzhd_weekly.quantity_of_containers AS quantity_of_containers,
    rzhd_weekly.quantity_of_wagons AS quantity_of_wagons,
    rzhd_weekly.cargo_turnover AS cargo_turnover,
    rzhd_weekly.transportation_volume_tons AS transportation_volume_tons,
    rzhd_weekly.tara_weight_of_an_empty_wagon AS tara_weight_of_an_empty_wagon,
    rzhd_weekly.wagon_kilometers AS wagon_kilometers,
    rzhd_weekly.date_of_disbursement AS date_of_disbursement,
    rzhd_weekly.date_csm AS date_csm,
    rzhd_weekly.crediting_month AS crediting_month,
    rzhd_weekly.crediting_year AS crediting_year,
    rzhd_weekly.arrival_day_report AS arrival_day_report,
    rzhd_weekly.arrival_date AS arrival_date,
    rzhd_weekly.original_file_name AS original_file_name,
    rzhd_weekly.original_file_parsed_on AS original_file_parsed_on,
    rzhd_weekly.original_file_index AS original_file_index
   FROM rzhd.rzhd_weekly
     LEFT JOIN rzhd.reference_tonnage AS rt ON rzhd_weekly.container_tonnage = rt.container_tonnage
     LEFT JOIN rzhd.reference_container_type AS rct ON rzhd_weekly.type_of_special_container = rct.type_of_special_container;

--Как работает
SELECT *
FROM db.table1 AS t1
LEFT JOIN db.table2 AS t2 ON t1.test = t2.test1

--Как нужно, но не работает
SELECT *
FROM db.table1 AS t1
LEFT JOIN db.table2 AS t2 ON LIKE(t1.test, t2.test1)


SELECT *
FROM db.table1 AS t1, db.table2 AS t2
where LIKE(t1.test, t2.test1) or