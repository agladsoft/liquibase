CREATE TABLE IF NOT EXISTS DataCore.terminals_capacity
(
    `key_id` String,

    `uuid` UUID DEFAULT generateUUIDv4(),

    `stock` Nullable(String),

    `terminal` Nullable(String),

    `date` Nullable(Date32),

    `original_date_string` Nullable(String),

    `container_size` Nullable(Int32),

    `container_count` Nullable(Int32),

    `teu` Nullable(Int32),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)