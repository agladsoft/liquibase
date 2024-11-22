CREATE TABLE IF NOT EXISTS DataCore.border_crossing_plans
(
    `uuid` DEFAULT generateUUIDv4(),

    `department` Nullable(String),

    `month` Nullable(Int32),

    `year` Nullable(Int32),

    `teu` Nullable(Int32),

    `container_count` Nullable(Int32),

    `original_file_name` String,

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY original_file_name