CREATE TABLE IF NOT EXISTS DataCore.volumes_orlovka_terminal_containers_empty
(
    `uuid` DEFAULT generateUUIDv4(),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `date_arrival` Nullable(Date32),

    `date_departure` Nullable(Date32),

    `storage_days` Nullable(Int32),

    `storage_cost` Nullable(Int32),

    `rate_cargo_handlin_arrival` Nullable(Int32),

    `rate_cargo_handlin_export` Nullable(Int32),

    `comment` Nullable(String),

    `original_file_name` String,

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY original_file_name