CREATE TABLE IF NOT EXISTS DataCore.natural_indicators_by_contracts_segments
(

    `uuid` DEFAULT generateUUIDv4(),

    `Month` Nullable(Int32),

    `Year` Nullable(Int32),

    `Segment` Nullable(String),

    `Date` Nullable(Date),

    `orderNumber` Nullable(String),

    `container` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid