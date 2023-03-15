CREATE TABLE IF NOT EXISTS rzhd.rzhd_petersburg
(
    `wagon_number` Nullable(String),
    `container_no` Nullable(String),
    `document_no` Nullable(String),
    `code_of_conditional_type_of_wagon` Nullable(String),
    `departure_road` Nullable(String),
    `name_of_cargo` Nullable(String),
    `wagon_type_descriptions` Nullable(String),
    `departure_station_of_the_rf` Nullable(String),
    `administration_of_the_cis_departure_station` Nullable(String),
    `administration_of_the_cis_destination_station` Nullable(String),
    `leaseholder` Nullable(String),
    `exceptional_rate_code` Nullable(String),
    `departure_date` Date,
    `departure_day_report` Nullable(Date),
    `number_of_cargo_acceptances_for_transportation` Nullable(Bigint),
    `destination_road` Nullable(String),
    `type_of_transportation` Nullable(String),
    `type_of_communication_between_countries_by_rail` Nullable(String),
    `dispatch_category` Nullable(String),
    `quantity_of_containers` Nullable(Bigint),
    `quantity_of_wagons` Nullable(Bigint),
    `wagon_ownership_sign` Nullable(String),
    `currency_code` Nullable(String),
    `cargo_according_to_the_harmonized_nomenclature_of_goods_gng` Nullable(String),
    `cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng` Nullable(String),
    `state_of_departure` Nullable(String),
    `state_of_destination` Nullable(String),
    `sign_of_the_state_of_destination` Nullable(String),
    `sign_of_the_state_of_departure` Nullable(String),
    `load_capacity` Nullable(String),
    `group_of_cargo_according_to_the_operational_nomenclature` Nullable(String),
    `group_of_cargo_according_to_co22` Nullable(String),
    `group_of_cargo_according_to_go7` Nullable(String),
    `sub_group_of_cargo` Nullable(String),
    `cargo_group` Nullable(String),
    `cargo_code_of_the_etsng` Nullable(String),
    `payer_of_the_railway_tariff` Nullable(String),
    `cargo_class` Nullable(Bigint),
    `departure_station_code_of_rf` Nullable(String),
    `destination_station_code_of_rf` Nullable(String),
    `departure_station_code_of_cis` Nullable(String),
    `destination_station_code_of_cis` Nullable(String),
    `the_owner_of_the_wagon_according_to_the_internal_directory` Nullable(String),
    `wagon_operator` Nullable(String),
    `sign_of_a_lease` Nullable(String),
    `month_of_acceptance_of_cargo_for_transportation` Nullable(Integer),
    `year_of_acceptance_of_cargo_for_transportation` Nullable(Integer),
    `departure_month` Nullable(Integer),
    `departure_year` Nullable(Integer),
    `departure_region` Nullable(String),
    `destination_region` Nullable(String),
    `carriage_fee` Nullable(Bigint),
    `wagon_owner_according_to_egrpo` Nullable(String),
    `shipper_okpo` Nullable(String),
    `shipper_according_to_egrpo` Nullable(String),
    `shipper_by_puzt` Nullable(String),
    `distance_zone_of_grouping_by_mileage` Nullable(String),
    `consignee_according_to_egrpo` Nullable(String),
    `puzt_consignor` Nullable(String),
    `consignee_okpo` Nullable(String),
    `container_prefix` Nullable(String),
    `wagon_subgenus` Nullable(String),
    `sign_of_the_place_of_settlement` Nullable(String),
    `sign_of_non_credited_cargo_at_border_crossings` Nullable(String),
    `sign_of_the_principal` Nullable(String),
    `container_tonnage` Nullable(String),
    `subject_of_departure_of_the_rf` Nullable(String),
    `destination_subject_of_the_rf` Nullable(String),
    `type_of_wagon_according_to_co29` Nullable(String),
    `wagon_subtype_according_to_co28` Nullable(String),
    `discount_amount` Nullable(Bigint),
    `state_owner_of_the_wagon` Nullable(String),
    `sign_of_the_border_crossing_of_the_destination_of_the_rf` Nullable(String),
    `sign_of_the_border_crossing_of_the_destination_of_the_cis` Nullable(String),
    `sign_of_the_border_crossing_of_the_departure_of_the_cis` Nullable(String),
    `sign_of_the_border_crossing_of_the_departure_of_the_rf` Nullable(String),
    `rf_destination_station` Nullable(String),
    `sign_of_destination_station_of_the_rf` Nullable(String),
    `cis_departure_station` Nullable(String),
    `cis_destination_station` Nullable(String),
    `sign_of_destination_station_of_the_cis` Nullable(String),
    `sign_of_the_departure_station_of_the_cis` Nullable(String),
    `sign_of_departure_station_of_the_rf` Nullable(String),
    `conditional_wagon_type` Nullable(String),
    `park_type` Nullable(String),
    `cargo_turnover` Nullable(Bigint),
    `tariff_sign` Nullable(String),
    `transportation_volume_tons` Nullable(Decimal128(19)),
    `tara_weight_of_an_empty_wagon` Nullable(Bigint),
    `type_of_accounting` Nullable(String),
    `wagon_kilometers` Nullable(Bigint),
    `sign_of_the_exclusive_tariff` Nullable(Bigint),
    `name_of_cargo_etsng` Nullable(String),
    `type_of_special_container` Nullable(String),
    `group_of_cargo_according_to_go6` Nullable(String),
    `cargo_group_according_to_etsng` Nullable(String),
    `group_of_cargo_co21` Nullable(String),
    `wagon_subtype_according_to_co29` Nullable(String),
    `original_file_name` Nullable(String),
    `original_file_parsed_on` Nullable(String),
    `original_file_index` Nullable(Bigint)
)
ENGINE = MergeTree()
ORDER BY departure_date;