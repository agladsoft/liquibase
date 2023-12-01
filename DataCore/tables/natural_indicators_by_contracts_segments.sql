CREATE TABLE IF NOT EXISTS DataCore.natural_indicators_by_contracts_segments
(

    `uuid` DEFAULT generateUUIDv4(),

    `month` Nullable(Int32),

    `year` Nullable(Int32),

    `segment` Nullable(String),

    `date` Nullable(Date32),

    `original_date_string` Nullable(String),

    `order_number` Nullable(String),

    `container_number` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid