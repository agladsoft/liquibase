CREATE TABLE IF NOT EXISTS DataCore.counterparties
(
    `key_id` String,

    `uuid` UUID DEFAULT generateUUIDv4(),

    `main_manager` Nullable(String),

    `classification` Nullable(String),

    `counterparty` Nullable(String),

    `is_supplier` Nullable(Bool),

    `registration_country` Nullable(String),

    `inn` Nullable(String),

    `relationship_type` Nullable(String),

    `legal_physical_entity` Nullable(String),

    `head_counterparty` Nullable(String),

    `full_name` Nullable(String),

    `is_foreign_company` Nullable(Bool),

    `short_name` Nullable(String),

    `is_client` Nullable(Bool),

    `legal_address` Nullable(String),

    `planned_turnover` Nullable(String),

    `status` Nullable(String),

    `rc_uid` Nullable(String),

    `is_other` Nullable(Bool),

    `counterparty_type` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)