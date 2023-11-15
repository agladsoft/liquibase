CREATE TABLE IF NOT EXISTS DataCore.orders_report
(

    `uuid` DEFAULT generateUUIDv4(),

    `HScode` Nullable(String),

    `line` Nullable(String),

    `POL` Nullable(String),

    `shipperINN` Nullable(String),

    `consignee` Nullable(String),

    `shipper` Nullable(String),

    `container` Nullable(String),

    `vessel` Nullable(String),

    `voyage` Nullable(String),

    `booking_list` Nullable(String),

    `orderNumber` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid