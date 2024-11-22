CREATE TABLE IF NOT EXISTS DataCore.sales_plan
(
    `key_id` String,

    `uuid` UUID DEFAULT generateUUIDv4(),

    `teu` Nullable(Int32),

    `container_count` Nullable(Int32),

    `container_size` Nullable(Int32),

    `direction` Nullable(String),

    `client` Nullable(String),

    `year` Nullable(Int32),

    `month` Nullable(Int32),

    `client_uid` Nullable(String),

    `department` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)