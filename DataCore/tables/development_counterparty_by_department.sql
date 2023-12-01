CREATE TABLE IF NOT EXISTS DataCore.development_counterparty_by_department
(

    `uuid` UUID DEFAULT generateUUIDv4(),

    `client` Nullable(String),

    `year` Nullable(Int32),

    `direction` Nullable(String),

    `client_uid` Nullable(String),

    `department` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid