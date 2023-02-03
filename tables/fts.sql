CREATE TABLE default.fts
(

    `id` Int32,

    `stat` Nullable(String),

    `declaration_number` Nullable(String),

    `the_number_of_the_goods_is_the_following` Nullable(String),

    `commodity_code_according_to_hs` Nullable(String),

    `customs_code` Nullable(String),

    `date_of_registration` Nullable(String),

    `g074` Nullable(String),

    `release_date` Nullable(String),

    `date_of_the_brokers_certificate` Nullable(String),

    `currency_exchange_rate_date` Nullable(String),

    `g25` Nullable(String),

    `direction_of_movement` Nullable(String),

    `customs_regime` Nullable(String),

    `senders_tin` Nullable(String),

    `g021_region` Nullable(String),

    `senders_name` Nullable(String),

    `address` Nullable(String),

    `a_sign_of_container_transportation` Nullable(String),

    `g032` Nullable(String),

    `number_of_td1_2_or_td3_4` Nullable(String),

    `g05` Nullable(String),

    `total_product_names` Nullable(String),

    `type_of_gtd` Nullable(String),

    `recipients_tin` Nullable(String),

    `g081_region` Nullable(String),

    `name_of_the_recipient` Nullable(String),

    `recipients_country_code` Nullable(String),

    `recipients_address` Nullable(String),

    `inn_of_the_contract_holder` Nullable(String),

    `name_of_the_contract_holder` Nullable(String),

    `country_code_of_the_contract_holder` Nullable(String),

    `address_of_the_contract_holder` Nullable(String),

    `g098` Nullable(String),

    `xcontainer` Nullable(String),

    `code_of_the_trading_country` Nullable(String),

    `the_total_customs_value_of_the_gtd` Nullable(Decimal128(19)),

    `the_currency_code_is_there_costs` Nullable(String),

    `declarants_inn` Nullable(String),

    `name_of_the_declarant` Nullable(String),

    `the_code_of_the_declarants_country_of_residence` Nullable(String),

    `declarants_address` Nullable(String),

    `g148` Nullable(String),

    `contstat` Nullable(String),

    `senders_country_code` Nullable(String),

    `country_of_origin_code` Nullable(String),

    `country_of_departure` Nullable(String),

    `country_code_of_departure` Nullable(String),

    `country_of_origin` Nullable(String),

    `destination_country_code` Nullable(String),

    `destination_country` Nullable(String),

    `g180` Nullable(String),

    `type_of_information` Nullable(String),

    `delivery_condition` Nullable(String),

    `point_of_supply_of_goods` Nullable(String),

    `g084b` Nullable(String),

    `g088` Nullable(String),

    `g094b` Nullable(String),

    `letters_contract_currency_code` Nullable(String),

    `total_invoice_value_for_gtd` Nullable(Decimal128(19)),

    `currency_exchange_rate` Nullable(Decimal128(19)),

    `g024b` Nullable(String),

    `g028` Nullable(String),

    `g144b` Nullable(String),

    `customs_code_at_the_border` Nullable(String),

    `name_and_characteristics_of_the_goods` Nullable(String),

    `manufacturer_company` Nullable(String),

    `trademark_patent` Nullable(String),

    `country_of_origin_2` Nullable(String),

    `bank_requisites` Nullable(String),

    `number_of_cargo_spaces` Nullable(String),

    `package_availability_code` Nullable(String),

    `g31_21` Nullable(String),

    `g31_4` Nullable(String),

    `g31_41` Nullable(String),

    `number_of_containers` Nullable(String),

    `number_of_goods_in_additional_units` Nullable(Decimal128(19)),

    `the_name_of_the_additional_unit` Nullable(String),

    `the_number_of_goods_in_the_second_unit_change` Nullable(Decimal128(19)),

    `the_name_of_the_second_unit_is` Nullable(String),

    `the_code_of_the_second_unit` Nullable(String),

    `number_of_goods_of_the_third_unit_of_change` Nullable(String),

    `naim_the_third_unit_of_change` Nullable(String),

    `the_code_of_the_third_unit` Nullable(String),

    `preferences_special_payments` Nullable(String),

    `procedure` Nullable(String),

    `net_weight_kg` Nullable(Decimal128(19)),

    `gross_weight_kg` Nullable(Decimal128(19)),

    `nettobrutto` Nullable(String),

    `quota` Nullable(Decimal128(19)),

    `g3911` Nullable(String),

    `g3912` Nullable(String),

    `g392` Nullable(String),

    `the_code_of_the_additional_unit` Nullable(String),

    `invoice_value` Nullable(Decimal128(19)),

    `a_sign_of_the_ccc` Nullable(String),

    `vehicle_detection_method` Nullable(String),

    `customs_value_rub` Nullable(Decimal128(19)),

    `g453` Nullable(String),

    `statistical_cost_usd` Nullable(Decimal128(19)),

    `rubedizm` Nullable(String),

    `usdedizm` Nullable(String),

    `usd_for_kg` Nullable(Decimal128(19)),

    `the_amount_of_the_border_is_47_in_usd` Nullable(String),

    `g474usd` Nullable(String),

    `the_amount_of_the_border_47_in_rur` Nullable(String),

    `brokers_certificate_number` Nullable(String),

    `brokers_inn` Nullable(String),

    `brokers_name` Nullable(String),

    `brokers_address` Nullable(String),

    `placeholders_full_name` Nullable(String),

    `placeholder_phone_number` Nullable(String),

    `position_of_the_placeholder` Nullable(String),

    `availability_of_the_ccc` Nullable(String),

    `code_for_completing_customs_clearance` Nullable(String),

    `lnp_must_faces` Nullable(String),

    `document_type` Nullable(String),

    `certificate_of_svh` Nullable(String),

    `name_of_the_station_warehouse` Nullable(String),

    `the_code_is_there` Nullable(String),

    `typ_dtc` Nullable(String),

    `models` Nullable(String),

    `bank_regnum` Nullable(String),

    `bank_branch` Nullable(String),

    `g332` Nullable(String),

    `g30_address` Nullable(String),

    `filename` Nullable(String),

    `updated` Nullable(String),

    `g45a` Nullable(String),

    `g45ae` Nullable(String),

    `g474dol_u` Nullable(String),

    `tsw` Nullable(String),

    `contr` Nullable(String),

    `kdt_type` Nullable(String),

    `note` Nullable(String),

    `additional_information_about_the_contract_holder_from_rosstat` Nullable(String),

    `g0131` Nullable(String),

    `g020` Nullable(String),

    `senders_city` Nullable(String),

    `senders_index` Nullable(String),

    `senders_address` Nullable(String),

    `senders_area` Nullable(String),

    `g080` Nullable(String),

    `g090` Nullable(String),

    `g11c` Nullable(String),

    `g141` Nullable(String),

    `g15ac` Nullable(String),

    `g18` Nullable(String),

    `g21` Nullable(String),

    `g210` Nullable(String),

    `g221c` Nullable(String),

    `product_information_from_applications` Nullable(String),

    `the_reverse_side_of_the_gtd` Nullable(String),

    `warehouse_area` Nullable(String),

    `invoice_cost_rub` Nullable(String),

    `type_of_transport_at_the_border` Nullable(String),

    `g30a` Nullable(String),

    `g5412` Nullable(String),

    `type_of_transport_within_the_country` Nullable(String),

    `g5411d` Nullable(String),

    `ntrans` Nullable(String),

    `warehouse_street` Nullable(String),

    `warehouse_city` Nullable(String),

    `vidtrans` Nullable(String),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `original_file_index` Nullable(Int64),

    `release_date2` Nullable(Date),

    `number_of_seats2` Nullable(Int32)
)
ENGINE = MergeTree()
ORDER BY id;
