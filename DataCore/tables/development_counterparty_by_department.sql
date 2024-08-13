CREATE TABLE IF NOT EXISTS DataCore.development_counterparty_by_department
(
    `key_id` String,

    `uuid` UUID DEFAULT generateUUIDv4(),

    `client` Nullable(String),

    `year` Nullable(Int32),

    `direction` Nullable(String),

    `client_uid` Nullable(String),

    `department` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)