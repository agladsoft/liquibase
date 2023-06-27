CREATE TABLE fts.kz_mir
(

    `declaration_number` Nullable(String),

    `the_number_of_the_goods_is_the_following` Nullable(String),

    `abbreviation_type_of_gtd` Nullable(String),

    `type_of_gtd` Nullable(String),

    `date_of_registration_declaration` Nullable(Date),

    `release_date` Nullable(Date),

    `customs_code` Nullable(String),

    `customs_department` Nullable(String),

    `customs_department_address` Nullable(String),

    `business_partner` Nullable(String),

    `business_partner_address` Nullable(String),

    `external_economic_activity_member_rnn_iin_bin` Nullable(String),

    `external_economic_activity_member` Nullable(String),

    `external_economic_activity_member_address` Nullable(String),

    `direction` Nullable(String),

    `customs_regime_code` Nullable(String),

    `customs_regime` Nullable(String),

    `trading_country_code` Nullable(String),

    `trading_country` Nullable(String),

    `country_of_departure_code` Nullable(String),

    `country_of_departure` Nullable(String),

    `country_of_origin_code` Nullable(String),

    `country_of_origin` Nullable(String),

    `destination_country_code` Nullable(String),

    `destination_country` Nullable(String),

    `delivery_condition_code` Nullable(String),

    `delivery_condition` Nullable(String),

    `point_of_supply_of_goods` Nullable(String),

    `contract_currency_code` Nullable(String),

    `contract_currency` Nullable(String),

    `currency_exchange_rate` Nullable(Decimal(38, 19)),

    `commodity_code_according_to_hs` Nullable(String),

    `commodity_group` Nullable(String),

    `name_and_characteristics_of_the_goods_1` Nullable(String),

    `name_and_characteristics_of_the_goods_2` Nullable(String),

    `manufacturer_company` Nullable(String),

    `trademark_patent` Nullable(String),

    `good_brand` Nullable(String),

    `number_of_TOVG_in_additional_unit` Nullable(String),

    `the_name_of_the_additional_unit_of_TOVG` Nullable(String),

    `number_of_goods_in_additional_unit` Nullable(Decimal(38, 19)),

    `the_code_of_the_additional_unit` Nullable(String),

    `the_name_of_the_additional_unit` Nullable(String),

    `gross_weight_kg` Nullable(Decimal(38, 19)),

    `net_weight_kg` Nullable(Decimal(38, 19)),

    `invoice_value` Nullable(Decimal(38, 19)),

    `customs_value_rub` Nullable(Decimal(38, 19)),

    `statistical_cost_usd` Nullable(Decimal(38, 19)),

    `type_of_transport_at_the_border` Nullable(String),

    `transport_at_the_border` Nullable(String),

    `type_of_transport_within_the_country` Nullable(String),

    `transport_within_the_country` Nullable(String),

    `full_name_of_external_economic_activity_member` Nullable(String),

    `short_name_of_external_economic_activity_member` Nullable(String),

    `date_of_registration` Date,

    `re_registration_date` Nullable(Date),

    `director_full_name` Nullable(String),

    `TE` Nullable(String),

    `region` Nullable(String),

    `district` Nullable(String),

    `index` Nullable(String),

    `address` Nullable(String),

    `telephone_number` Nullable(String),

    `email` Nullable(String),

    `status_at_upload_date` Nullable(String),

    `okved_activity_main_type` Nullable(String),

    `activity_main_type` Nullable(String),

    `okved_activity_other_types` Nullable(String),

    `economy_sector` Nullable(String),

    `KRP` Nullable(String),

    `enterprise_size` Nullable(String),

    `employees_number_at_upload_date` Nullable(String),

    `partner_country` Nullable(String),

    `inn_of_the_contract_holder` Nullable(String),

    `contract_holder` Nullable(String),

    `contract_holder_address` Nullable(String),

    `iin_bin_of_the_declarant` Nullable(String),

    `declarant` Nullable(String),

    `product_sku` Nullable(String),

    `grade` Nullable(String),

    `assortment_name` Nullable(String),

    `assortment_name_description` Nullable(String),

    `assortment_name_description_1` Nullable(String),

    `assortment_name_description_2` Nullable(String),

    `number_of_goods_in_additional_unit_from_description` Nullable(String),

    `the_name_of_the_additional_unit_from_description` Nullable(String),

    `number_of_goods_in_additional_unit_from_description_2` Nullable(String),

    `the_name_of_the_additional_unit_from_description_2` Nullable(String),

    `number_of_goods_in_additional_unit_2` Nullable(String),

    `the_code_of_the_additional_unit_2` Nullable(String),

    `the_name_of_the_additional_unit_2` Nullable(String),

    `declaration_status` Nullable(String),

    `the_total_invoice_value_of_the_gtd` Nullable(String),

    `code_of_the_method_for_determining_the_customs_value` Nullable(String),

    `customs_value_adjustment_flag_code` Nullable(String),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `original_file_index` Nullable(Int32)
)
ENGINE = MergeTree
ORDER BY date_of_registration