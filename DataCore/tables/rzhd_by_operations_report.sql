CREATE TABLE IF NOT EXISTS DataCore.rzhd_by_operations_report
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `etsng_order_base_cargo` Nullable(String),

    `etsng_operation_cargo` Nullable(String),

    `is_border_crossing_point` Nullable(Bool),

    `client_uid` Nullable(String),

    `client` Nullable(String),

    `etsng_name` Nullable(String),

    `container_size` Nullable(Int32),

    `operation_month` Nullable(Int32),

    `operation_date` Nullable(Date32),

    `original_operation_date_string` Nullable(String),

    `direction` Nullable(String),

    `department` Nullable(String),

    `container_number` Nullable(String),

    `etsng_code` Nullable(String),

    `destination_point` Nullable(String),

    `destination_station_code` Nullable(String),

    `destination_point_type` Nullable(String),

    `manager` Nullable(String),

    `client_inn` Nullable(String),

    `departure_point` Nullable(String),

    `departure_station_code` Nullable(String),

    `departure_point_type` Nullable(String),

    `order_number` Nullable(String),

    `operation_name` Nullable(String),

    `container_type` Nullable(String),

    `operation_year` Nullable(Int32),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)