CREATE TABLE IF NOT EXISTS DataCore.natural_indicators_by_contracts_segments
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `direction` Nullable(String),

    `month` Nullable(Int32),

    `year` Nullable(Int32),

    `segment` Nullable(String),

    `date` Nullable(Date32),

    `original_date_string` Nullable(String),

    `order_number` Nullable(String),

    `container_number` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)