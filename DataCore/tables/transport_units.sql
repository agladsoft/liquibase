CREATE TABLE IF NOT EXISTS DataCore.transport_units
(

    `uuid` DEFAULT generateUUIDv4(),

    `line` Nullable(String),

    `container` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid