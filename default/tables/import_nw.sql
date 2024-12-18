CREATE TABLE IF NOT EXISTS default.import_nw
(
    `uuid` UUID DEFAULT generateUUIDv4(),

    `month` Int32,

    `year` Nullable(Int32),

    `direction` Nullable(String),

    `terminal` Nullable(String),

    `line` Nullable(String),

    `ship_name` Nullable(String),

    `voyage` Nullable(String),

    `shipment_date` Nullable(Date),

    `consignment` Nullable(String),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `container_type` Nullable(String),

    `teu` Nullable(Int32),

    `container_count` Nullable(Int32),

    `is_empty` Nullable(Bool),

    `goods_name` Nullable(String),

    `tnved` Nullable(String),

    `tnved_group_id` Nullable(String),

    `goods_weight_with_package` Nullable(Decimal128(19)),

    `shipper_name` Nullable(String),

    `consignee_name` Nullable(String),

    `consignee_country` Nullable(String),

    `expeditor` Nullable(String),

    `tracking_seaport` Nullable(String),

    `is_auto_tracking` Nullable(Bool),

    `is_auto_tracking_ok` Nullable(Bool),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY uuid;
