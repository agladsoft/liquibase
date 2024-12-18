CREATE TABLE IF NOT EXISTS DataCore.natural_indicators_by_transaction_fact_date
(
    `key_id` String,

    `uuid` UUID DEFAULT generateUUIDv4(),

    `container_size` Nullable(Int32),

    `operation_date` Nullable(Date32),

    `is_full` Nullable(Bool),

    `original_operation_date_string` Nullable(String),

    `operation_month` Nullable(Int32),

    `container_count` Nullable(Int32),

    `teu` Nullable(Int32),

    `manager` Nullable(String),

    `container_type` Nullable(String),

    `operation_year` Nullable(Int32),

    `order_number` Nullable(String),

    `direction` Nullable(String),

    `client` Nullable(String),

    `order_date` Nullable(Date32),

    `client_uid` Nullable(String),

    `department` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)