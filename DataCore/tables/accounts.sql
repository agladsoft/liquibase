CREATE TABLE IF NOT EXISTS DataCore.accounts
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `date` Nullable(Date32),

    `original_date_string` Nullable(String),

    `organization` Nullable(String),

    `client_uid` Nullable(String),

    `client` Nullable(String),

    `department` Nullable(String),

    `currency` Nullable(String),

    `profit_account_rub` Nullable(Int32),

    `profit_account` Nullable(Int32),

    `client_inn` Nullable(String),

    `unit_of_measurement` Nullable(String),

    `order_number` Nullable(String),

    `segment` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid