CREATE TABLE IF NOT EXISTS DataCore.ruscon_products
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `department` Nullable(String),

    `key` Nullable(String),

    `manager_division` Nullable(String),

    `manager` Nullable(String),

    `counterparty` Nullable(String),

    `crm_counterparty_number` Nullable(String),

    `project_number` Nullable(String),

    `kp_number` Nullable(String),

    `kp_date` Nullable(Date32),

    `direction` Nullable(String),

    `container_count_40` Nullable(Int32),

    `container_count_20` Nullable(Int32),

    `cargo` Nullable(String),

    `kp_currency` Nullable(String),

    `kp_amount` Nullable(Decimal128(12)),

    `kp_margin` Nullable(Decimal128(12)),

    `original_kp_date_string` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)