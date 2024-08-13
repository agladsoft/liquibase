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

    `profit_account_rub` Nullable(Decimal128(12)),

    `profit_account` Nullable(Decimal128(12)),

    `client_inn` Nullable(String),

    `unit_of_measurement` Nullable(String),

    `order_number` Nullable(String),

    `segment` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)