CREATE TABLE IF NOT EXISTS DataCore.sales_plan
(

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

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid