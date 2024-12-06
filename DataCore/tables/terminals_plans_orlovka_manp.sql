CREATE TABLE IF NOT EXISTS DataCore.terminals_plans_orlovka_manp
(
    `uuid` DEFAULT generateUUIDv4(),

    `department` Nullable(String),

    `organization` Nullable(String),

    `client` Nullable(String),

    `container_size` Nullable(Int32),

    `project` Nullable(String),

    `cargo` Nullable(String),

    `direction` Nullable(String),

    `basin` Nullable(String),

    `container_owned` Nullable(String),

    `date` Nullable(Date32),

    `container_count` Nullable(Int32),

    `teu` Nullable(Int32),

    `terminal` Nullable(String),

    `original_file_name` String,

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY original_file_name