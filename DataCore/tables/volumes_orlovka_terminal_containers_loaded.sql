CREATE TABLE IF NOT EXISTS DataCore.volumes_orlovka_terminal_containers_loaded
(
    `uuid` DEFAULT generateUUIDv4(),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `date_registration` Nullable(Date32),

    `amount_cargo_handling_loaded` Nullable(Int32),

    `original_file_name` String,

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY original_file_name