CREATE TABLE IF NOT EXISTS DataCore.export_bookings
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `freight_rate_uid` Nullable(String),

    `booking_status` Nullable(String),

    `discharge_port_bay` Nullable(String),

    `client_uid` Nullable(String),

    `client` Nullable(String),

    `load_port_bay` Nullable(String),

    `cargo_readiness` Nullable(Date32),

    `etd` Nullable(Date32),

    `freight_terms` Nullable(String),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `container_type` Nullable(String),

    `eta` Nullable(Date32),

    `original_booking_date_string` Nullable(String),

    `voyage` Nullable(String),

    `container_count` Nullable(Int32),

    `discharge_port` Nullable(String),

    `load_port` Nullable(String),

    `direction` Nullable(String),

    `freight_rate` Nullable(Int32),

    `line` Nullable(String),

    `service_number` Nullable(String),

    `department` Nullable(String),

    `vessel` Nullable(String),

    `order_number` Nullable(String),

    `booking_date` Nullable(Date32),

    `manager` Nullable(String),

    `booking` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)