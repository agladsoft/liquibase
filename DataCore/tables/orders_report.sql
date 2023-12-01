CREATE TABLE IF NOT EXISTS DataCore.orders_report
(

    `uuid` DEFAULT generateUUIDv4(),

    `tnved` Nullable(String),

    `line` Nullable(String),

    `load_port` Nullable(String),

    `shipper_inn` Nullable(String),

    `consignee` Nullable(String),

    `shipper` Nullable(String),

    `container_number` Nullable(String),

    `vessel` Nullable(String),

    `voyage_date` Nullable(Date32),

    `voyage` Nullable(String),

    `consignment` Nullable(String),

    `order_number` Nullable(String),

    `original_voyage_date_string` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid