CREATE TABLE IF NOT EXISTS DO.reference_counterparties
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `name` Nullable(String),

    `do_uid` Nullable(String),

    `status` Nullable(String),

    `head_counterparty` Nullable(String),

    `included_in_group` Nullable(String),

    `legal_physical_entity` Nullable(String),

    `full_name` Nullable(String),

    `inn` Nullable(String),

    `kpp` Nullable(String),

    `okpo` Nullable(String),

    `ogrn` Nullable(String),

    `is_foreign_company` Nullable(Bool),

    `deletion_flag` Nullable(Bool),

    `registration_country` Nullable(String),

    `registration_number` Nullable(String),

    `tax_number` Nullable(String),

    `counterparty_type` Nullable(String),

    `supplier_customer_type` Nullable(String),

    `classification` Nullable(String),

    `contract_type` Nullable(String),

    `relationship_type` Nullable(String),

    `planned_turnover` Nullable(String),

    `manager` Nullable(String),

    `legal_address` Nullable(String),

    `actual_address` Nullable(String),

    `postal_address` Nullable(String),

    `telephone_number` Nullable(String),

    `email` Nullable(String),

    `website` Nullable(String),

    `organization_uid` Nullable(String),

    `organization` Nullable(String),

    `is_control` Nullable(Bool),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid