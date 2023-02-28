CREATE TABLE IF NOT EXISTS default.rzhd
(
    `administration_of_the_cis_destination_station` Nullable(String),
    `administration_of_the_cis_departure_station` Nullable(String),
    `leaseholder` Nullable(String),
    `wagon_tenant_according_to_internal_directory` Nullable(String),
    `wagon_kilometers` Nullable(Bigint),
    `weight` Nullable(Decimal128(19)),
    `tara_weight_of_an_empty` Nullable(Bigint),
    `type_of_transportation` Nullable(String),
    `type_of_communication_between_countries_by_rail` Nullable(String),
    `type_of_special_container` Nullable(String),
    `type_of_accounting` Nullable(String),
    `state_of_destination` Nullable(String),
    `state_of_departure` Nullable(String),
    `state_owner_of_the_wagon` Nullable(String),
    `cargo_okved` Nullable(String),
    `cargo_according_to_the_harmonized_nomenclature_of_goods_gng` Nullable(String),
    `cargo_turnover` Nullable(Decimal128(19)),
    `shipper_okpo` Nullable(String),
    `shipper_according_to_egrpo` Nullable(String),
    `shipper_by_puzt` Nullable(String),
    `load_capacity` Nullable(String),
    `consignee_okpo` Nullable(String),
    `consignee_according_to_egrpo` Nullable(String),
    `puzt_consignor` Nullable(String),
    `сargo_group` Nullable(String),
    `cargo_group_okved` Nullable(String),
    `group_of_cargo_according_to_go6` Nullable(String),
    `group_of_cargo_according_to_go7` Nullable(String),
    `cargo_group_according_to_etsng` Nullable(String),
    `group_of_cargo_according_to_the_operational_nomenclature` Nullable(String),
    `group_of_cargo_according_to_co22` Nullable(String),
    `group_of_cargo_co21` Nullable(String),
    `departure_date` Date,
    `date_of_registration` Nullable(Date),
    `arrival_date` Nullable(Date),
    `date_of_disbursement` Nullable(Date),
    `date_csm` Nullable(Date),
    `destination_road` Nullable(String),
    `destination_road_cis` Nullable(String),
    `departure_road` Nullable(String),
    `departure_road_cis` Nullable(String),
    `wagon_check_in_road` Nullable(String),
    `wagon_check_in_road_on_lease` Nullable(String),
    `dispatch_category` Nullable(String),
    `cargo_class` Nullable(Bigint),
    `currency_code` Nullable(String),
    `cargo_code_of_the_etsng` Nullable(String),
    `cargo_code_okved` Nullable(Bigint),
    `cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng` Nullable(String),
    `subsidiary_and_affiliate_code_of_rzd` Nullable(String),
    `exceptional_rate_code` Nullable(String),
    `rolling_stock_code` Nullable(Bigint),
    `previously_transported_cargo_code` Nullable(String),
    `destination_station_code_of_rf` Nullable(String),
    `destination_station_code_of_cis` Nullable(String),
    `departure_station_code_of_rf` Nullable(String),
    `departure_station_code_of_cis` Nullable(String),
    `code_of_conditional_type_of_wagon` Nullable(String),
    `quantity_of_wagons` Nullable(Bigint),
    `quantity_of_containers` Nullable(Bigint),
    `departure_month` Nullable(String),
    `month_of_acceptance_of_cargo_for_transportation` Nullable(String),
    `crediting_month` Nullable(String),
    `wagon_model` Nullable(String),
    `name_of_cargo` Nullable(String),
    `name_of_cargo_etsng` Nullable(String),
    `wagon_number` Nullable(String),
    `document_no` Nullable(String),
    `container_no` Nullable(String),
    `transportation_volume_tons` Nullable(Bigint),
    `transportation_volume_kg` Nullable(Bigint),
    `wagon_operator` Nullable(String),
    `wagon_type_descriptions` Nullable(String),
    `departure_day_report` Nullable(Date),
    `arrival_day_report` Nullable(Date),
    `ferry_ust_luga_baltiysk` Nullable(String),
    `planned_arrival_date` Nullable(Date),
    `payer_of_the_railway_tariff` Nullable(String),
    `cargo_subgroup_okved` Nullable(String),
    `sub_group_of_cargo` Nullable(String),
    `wagon_subgenus` Nullable(String),
    `wagon_subtype_according_to_co28` Nullable(String),
    `wagon_subtype_according_to_co29` Nullable(String),
    `distance_zone_of_grouping_by_mileage` Nullable(String),
    `container_prefix` Nullable(String),
    `sign_of_a_lease` Nullable(String),
    `sign_of_the_state_of_departure` Nullable(String),
    `sign_of_the_state_of_destination` Nullable(String),
    `sign_of_the_principal` Nullable(String),
    `sign_of_the_exclusive_tariff` Nullable(Bigint),
    `sign_of_the_place_of_settlement` Nullable(String),
    `sign_of_non_credited_cargo_at_border_crossings` Nullable(String),
    `sign_of_the_border_crossing_of_the_destination_of_the_rf` Nullable(String),
    `sign_of_the_border_crossing_of_the_destination_of_the_cis` Nullable(String),
    `sign_of_the_border_crossing_of_the_departure_of_the_rf` Nullable(String),
    `sign_of_the_border_crossing_of_the_departure_of_the_cis` Nullable(String),
    `wagon_ownership_sign` Nullable(String),
    `sign_of_destination_station_of_the_rf` Nullable(String),
    `sign_of_destination_station_of_the_cis` Nullable(String),
    `sign_of_departure_station_of_the_rf` Nullable(String),
    `tariff_sign` Nullable(String),
    `cis_destination_station_affiliation` Nullable(String),
    `cis_departure_station_affiliation` Nullable(String),
    `carriage_fee` Nullable(Bigint),
    `estimated_date_of_arrival` Nullable(Date),
    `previously_transported_cargo` Nullable(String),
    `destination_region` Nullable(String),
    `departure_region` Nullable(String),
    `wagon_type` Nullable(String),
    `type_of_wagon_according_to_co29` Nullable(String),
    `the_owner_of_the_wagon_according_to_the_internal_directory` Nullable(String),
    `wagon_owner_according_to_egrpo` Nullable(String),
    `rf_destination_station` Nullable(String),
    `cis_destination_station` Nullable(String),
    `departure_station_of_the_rf` Nullable(String),
    `cis_departure_station` Nullable(String),
    `check_in_station_for_wagon_rental` Nullable(String),
    `wagon_registration_station` Nullable(String),
    `destination_subject_of_the_rf` Nullable(String),
    `subject_of_departure_of_the_rf` Nullable(String),
    `discount_amount` Nullable(Decimal128(19)),
    `tariff_distance` Nullable(Bigint),
    `park_type` Nullable(String),
    `type_of_message` Nullable(String),
    `container_tonnage` Nullable(String),
    `conditional_wagon_type` Nullable(String),
    `actual_date_of_arrival` Nullable(Date),
    `number_of_cargo_acceptances_for_transportation` Nullable(Bigint),
    `sign_of_the_departure_station_of_the_cis` Nullable(String),
    `teu` Nullable(Decimal128(19)),
    `original_file_name` Nullable(String),
    `original_file_parsed_on` Nullable(String),
    `original_file_index` Nullable(Bigint)
)
ENGINE = MergeTree()
ORDER BY departure_date;