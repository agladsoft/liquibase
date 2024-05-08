CREATE TABLE IF NOT EXISTS DataCore.natural_indicators_of_railway_reception_and_dispatch
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `date` Nullable(Date32),

    `original_date_string` Nullable(String),

    `organization` Nullable(String),

    `terminal` Nullable(String),

    `client_uid` Nullable(String),

    `client` Nullable(String),

    `operation` Nullable(String),

    `is_empty` Nullable(Bool),

    `container_count` Nullable(Int32),

    `container_size` Nullable(Int32),

    `teu` Nullable(Int32),

    `internal_customs_transit` Nullable(Int32),

    `other_transportation` Nullable(Int32),

    `container_train` Nullable(Int32),

    `wagon_dispatch_count` Nullable(Int32),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid