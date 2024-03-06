CREATE TABLE IF NOT EXISTS DataCore.transport_units
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `owner` Nullable(String),

    `container_number` Nullable(String),

    `container_type` Nullable(String),

    `container_size` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid