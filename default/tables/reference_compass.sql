CREATE TABLE IF NOT EXISTS default.reference_compass
(
    `uuid` UUID DEFAULT generateUUIDv4(),

    `inn` String,

    `company_name` Nullable(String),

    `kpp` Nullable(String),

    `ogrn` Nullable(String),

    `director_full_name` Nullable(String),

    `position` Nullable(String),

    `telephone_number` Nullable(String),

    `email` Nullable(String),

    `address` Nullable(String),

    `region` Nullable(String),

    `website_link` Nullable(String),

    `link_to_card_in_focus` Nullable(String),

    `status_at_upload_date` Nullable(String),

    `revenue_at_upload_date_thousand_rubles` Nullable(Integer),

    `net_profit_or_loss_at_upload_date_thousand_rubles` Nullable(Integer),

    `employees_number_at_upload_date` Nullable(Integer),

    `licenses` Nullable(String),

    `registration_date` Nullable(Date32),

    `register_msp` Nullable(String),

    `okved_activity_main_type` Nullable(String),

    `okved_activity_other_types` Nullable(String),

    `activity_main_type` Nullable(String),

    `activity_other_types` Nullable(String),

    `registration_region` Nullable(String),

    `branch_name` Nullable(String),

    `branch_address` Nullable(String),

    `branch_region` Nullable(String),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `dadata_company_name` Nullable(String),

    `dadata_okpo` Nullable(String),

    `dadata_status` Nullable(String),

    `dadata_registration_date` Nullable(Date),

    `dadata_liquidation_date` Nullable(Date),

    `dadata_address` Nullable(String),

    `dadata_region` Nullable(String),

    `dadata_federal_district` Nullable(String),

    `dadata_city` Nullable(String),

    `dadata_okved_activity_main_type` Nullable(String),

    `dadata_branch_name` Nullable(String),

    `dadata_branch_address` Nullable(String),

    `dadata_branch_region` Nullable(String),

    `dadata_geo_lat` Nullable(Decimal(38, 19)),

    `dadata_geo_lon` Nullable(Decimal(38, 19)),

    `is_company_name_from_cache` Nullable(Bool),

    `last_updated` Nullable(DateTime64)
)
ENGINE = MergeTree()
ORDER BY uuid;