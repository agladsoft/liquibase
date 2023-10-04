CREATE TABLE IF NOT EXISTS default.export_vsk
(
    `month` Int32,

    `year` Nullable(Int32),

    `uuid` UUID DEFAULT generateUUIDv4(),

    `direction` Nullable(String),

    `terminal` Nullable(String),

    `line` Nullable(String),

    `ship_name` Nullable(String),

    `voyage` Nullable(String),

    `shipment_date` Nullable(Date),

    `booking` Nullable(String),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `container_type` Nullable(String),

    `teu` Nullable(Int32),

    `container_count` Int32,

    `is_empty` Nullable(Bool),

    `goods_name` Nullable(String),

    `tnved` Nullable(String),

    `tnved_group_id` Nullable(String),

    `goods_weight_with_package` Nullable(Decimal128(19)),

    `goods_weight_brutto` Nullable(Decimal128(19)),

    `shipper_name` Nullable(String),

    `consignee_name` Nullable(String),

    `shipper_country` Nullable(String),

    `expeditor` Nullable(String),

    `tracking_seaport` Nullable(String),

    `gtd_number` Nullable(String),

    `is_auto_tracking` Nullable(Bool),

    `is_auto_tracking_ok` Nullable(Bool),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY month;
