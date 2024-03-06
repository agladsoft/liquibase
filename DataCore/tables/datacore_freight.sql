CREATE TABLE IF NOT EXISTS DataCore.datacore_freight
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `debit_status` Nullable(String),

    `invoice_status` Nullable(String),

    `invoice_port` Nullable(String),

    `terminal` Nullable(String),

    `operation_date` Nullable(Date32),

    `original_voyage_month_string` Nullable(String),

    `voyage` Nullable(String),

    `voyage_month` Nullable(Int32),

    `voyage_date` Nullable(Date32),

    `is_freight` Nullable(Bool),

    `operation_month` Nullable(Int32),

    `container_count` Nullable(Int32),

    `discharge_load_port` Nullable(String),

    `booking_discharge_port` Nullable(String),

    `booking_load_port` Nullable(String),

    `tnved` Nullable(String),

    `container_size` Nullable(Int32),

    `cargo` Nullable(String),

    `client_inn` Nullable(String),

    `manager` Nullable(String),

    `line` Nullable(String),

    `client` Nullable(String),

    `client_uid` Nullable(String),

    `operation_segment` Nullable(String),

    `vessel` Nullable(String),

    `department` Nullable(String),

    `container` Nullable(String),

    `direction` Nullable(String),

    `order_number` Nullable(String),

    `container_type` Nullable(String),

    `consignment` Nullable(String),

    `destination_port` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid