CREATE OR REPLACE VIEW rzhd.rzhd_ktk_view
AS SELECT
    rzhd_ktk.wagon_number AS wagon_number,
    rzhd_ktk.container_no AS container_no,
    rzhd_ktk.document_no AS document_no,
    rzhd_ktk.departure_date AS departure_date,
    toMonth(departure_date) AS departure_month,
    toYear(departure_date) AS departure_year,
    rzhd_ktk.park_type AS park_type,
    rzhd_ktk.type_of_transportation AS type_of_transportation,
    rzhd_ktk.type_of_communication_between_countries_by_rail AS type_of_communication_between_countries_by_rail,
    if(dispatch_category is not null, dispatch_category, 'нет данных') AS dispatch_category,
    rzhd_ktk.cargo_code_of_the_etsng AS cargo_code_of_the_etsng,
    rzhd_ktk.cargo_class AS cargo_class,
    rzhd_ktk.cargo_group AS cargo_group,
    rzhd_ktk.sub_group_of_cargo AS sub_group_of_cargo,
    rzhd_ktk.cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng AS cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng,
    rzhd_ktk.cargo_according_to_the_harmonized_nomenclature_of_goods_gng AS cargo_according_to_the_harmonized_nomenclature_of_goods_gng,
    rzhd_ktk.exceptional_rate_code AS exceptional_rate_code,
    rzhd_ktk.state_of_departure AS state_of_departure,
    rzhd_ktk.sign_of_the_state_of_departure AS sign_of_the_state_of_departure,
    rzhd_ktk.subject_of_departure_of_the_rf AS subject_of_departure_of_the_rf,
    rzhd_ktk.departure_road AS departure_road,
    rzhd_ktk.departure_station_code_of_rf AS departure_station_code_of_rf,
    rzhd_ktk.departure_station_code_of_cis AS departure_station_code_of_cis,
    rzhd_ktk.departure_station_of_the_rf AS departure_station_of_the_rf,
    rzhd_ktk.cis_departure_station AS cis_departure_station,
    rzhd_ktk.shipper_according_to_egrpo AS shipper_according_to_egrpo,
    rzhd_ktk.shipper_by_puzt AS shipper_by_puzt,
    swap_values(shipper_by_puzt, shipper_according_to_egrpo, 'неизвестен') AS common_shipper,
    rzhd_ktk.shipper_okpo AS shipper_okpo,
    rzhd_ktk.state_of_destination AS state_of_destination,
    rzhd_ktk.destination_subject_of_the_rf AS destination_subject_of_the_rf,
    rzhd_ktk.destination_road AS destination_road,
    rzhd_ktk.sign_of_the_state_of_destination AS sign_of_the_state_of_destination,
    rzhd_ktk.destination_station_code_of_rf AS destination_station_code_of_rf,
    rzhd_ktk.destination_station_code_of_cis AS destination_station_code_of_cis,
    rzhd_ktk.rf_destination_station AS rf_destination_station,
    rzhd_ktk.cis_destination_station AS cis_destination_station,
    rzhd_ktk.consignee_according_to_egrpo AS consignee_according_to_egrpo,
    rzhd_ktk.consignee_by_puzt AS consignee_by_puzt,
    swap_values(consignee_by_puzt, consignee_according_to_egrpo, 'неизвестен') AS common_consignee,
    rzhd_ktk.consignee_okpo AS consignee_okpo,
    rzhd_ktk.container_tonnage AS container_tonnage,
    rt.container_tonnage_unified AS container_tonnage_unified,
    multiIf
    (
        quantity_of_containers = 0 or quantity_of_containers = -1,
        0,
        rt.container_tonnage_unified is null,
        null,
        floor(divide(rt.container_tonnage_unified, 20), 1)
    ) AS teu,
    rzhd_ktk.container_prefix AS container_prefix,
    rzhd_ktk.type_of_special_container AS type_of_special_container,
    rct.container_type_unified AS container_type_unified,
    rzhd_ktk.wagon_subgenus AS wagon_subgenus,
    rzhd_ktk.load_capacity AS load_capacity,
    rzhd_ktk.code_of_conditional_type_of_wagon AS code_of_conditional_type_of_wagon,
    rzhd_ktk.state_owner_of_the_wagon AS state_owner_of_the_wagon,
    rzhd_ktk.wagon_ownership_sign AS wagon_ownership_sign,
    rzhd_ktk.sign_of_a_lease AS sign_of_a_lease,
    rzhd_ktk.wagon_owner_according_to_egrpo AS wagon_owner_according_to_egrpo,
    rzhd_ktk.leaseholder AS leaseholder,
    rzhd_ktk.the_owner_of_the_wagon_according_to_the_internal_directory AS the_owner_of_the_wagon_according_to_the_internal_directory,
    rzhd_ktk.carriage_fee AS carriage_fee,
    replace_organization_form(payer_of_the_railway_tariff) AS payer_of_the_railway_tariff,
    rzhd_ktk.quantity_of_containers AS quantity_of_containers,
    rzhd_ktk.quantity_of_wagons AS quantity_of_wagons,
    rzhd_ktk.name_of_cargo AS name_of_cargo,
    rzhd_ktk.administration_of_the_cis_departure_station AS administration_of_the_cis_departure_station,
    rzhd_ktk.administration_of_the_cis_destination_station AS administration_of_the_cis_destination_station,
    rzhd_ktk.departure_day_report AS departure_day_report,
    rzhd_ktk.number_of_cargo_acceptances_for_transportation AS number_of_cargo_acceptances_for_transportation,
    rzhd_ktk.currency_code AS currency_code,
    rzhd_ktk.group_of_cargo_according_to_the_operational_nomenclature AS group_of_cargo_according_to_the_operational_nomenclature,
    rzhd_ktk.wagon_operator AS wagon_operator,
    rzhd_ktk.departure_region AS departure_region,
    rzhd_ktk.destination_region AS destination_region,
    rzhd_ktk.distance_zone_of_grouping_by_mileage AS distance_zone_of_grouping_by_mileage,
    rzhd_ktk.sign_of_the_place_of_settlement AS sign_of_the_place_of_settlement,
    rzhd_ktk.sign_of_non_credited_cargo_at_border_crossings AS sign_of_non_credited_cargo_at_border_crossings,
    rzhd_ktk.sign_of_the_principal AS sign_of_the_principal,
    rzhd_ktk.type_of_wagon_according_to_co29 AS type_of_wagon_according_to_co29,
    rzhd_ktk.discount_amount AS discount_amount,
    rzhd_ktk.sign_of_the_border_crossing_of_the_destination_of_the_rf AS sign_of_the_border_crossing_of_the_destination_of_the_rf,
    rzhd_ktk.sign_of_the_border_crossing_of_the_destination_of_the_cis AS sign_of_the_border_crossing_of_the_destination_of_the_cis,
    rzhd_ktk.sign_of_the_border_crossing_of_the_departure_of_the_cis AS sign_of_the_border_crossing_of_the_departure_of_the_cis,
    rzhd_ktk.sign_of_the_border_crossing_of_the_departure_of_the_rf AS sign_of_the_border_crossing_of_the_departure_of_the_rf,
    rzhd_ktk.sign_of_destination_station_of_the_rf AS sign_of_destination_station_of_the_rf,
    rzhd_ktk.sign_of_destination_station_of_the_cis AS sign_of_destination_station_of_the_cis,
    rzhd_ktk.sign_of_the_departure_station_of_the_cis AS sign_of_the_departure_station_of_the_cis,
    rzhd_ktk.sign_of_departure_station_of_the_rf AS sign_of_departure_station_of_the_rf,
    rzhd_ktk.conditional_wagon_type AS conditional_wagon_type,
    rzhd_ktk.cargo_turnover AS cargo_turnover,
    rzhd_ktk.tariff_sign AS tariff_sign,
    rzhd_ktk.transportation_volume_tons AS transportation_volume_tons,
    rzhd_ktk.type_of_accounting AS type_of_accounting,
    rzhd_ktk.wagon_kilometers AS wagon_kilometers,
    rzhd_ktk.group_of_cargo_according_to_go6 AS group_of_cargo_according_to_go6,
    rzhd_ktk.group_of_cargo_co21 AS group_of_cargo_co21,
    rzhd_ktk.wagon_subtype_according_to_co29 AS wagon_subtype_according_to_co29,
    rzhd_ktk.wagon_type AS wagon_type,
    rzhd_ktk.original_file_name AS original_file_name,
    rzhd_ktk.original_file_parsed_on AS original_file_parsed_on,
    rzhd_ktk.original_file_index AS original_file_index
   FROM rzhd.rzhd_ktk
     LEFT JOIN rzhd.reference_tonnage AS rt ON rzhd_ktk.container_tonnage = rt.container_tonnage
     LEFT JOIN rzhd.reference_container_type AS rct ON rzhd_ktk.type_of_special_container = rct.type_of_special_container;