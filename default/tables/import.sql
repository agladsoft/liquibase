CREATE TABLE IF NOT EXISTS default.import
(
    `uuid` UUID DEFAULT generateUUIDv4(),

    `parsed_on` Date,

    `month_parsed_on` Nullable(Int32) DEFAULT toMonth(parsed_on),

    `year_parsed_on` Nullable(Int32) DEFAULT toYear(parsed_on),

    `terminal` Nullable(String),

    `line` Nullable(String),

    `ship_name` Nullable(String),

    `voyage` Nullable(String),

    `shipment_date` Nullable(Date),

    `shipment_month` Nullable(Int32) DEFAULT toMonth(shipment_date),

    `shipment_year` Nullable(Int32) DEFAULT toYear(shipment_date),

    `consignment` Nullable(String),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `container_type` Nullable(String),

    `teu` Nullable(Int32) DEFAULT (container_size / 20),

    `container_count` Int32 DEFAULT 1,

    `goods_name` Nullable(String),

    `tnved` Nullable(String),

    `package_number` Nullable(String),

    `goods_weight_with_package` Nullable(Decimal128(19)),

    `shipper_name` Nullable(String),

    `consignee_name` Nullable(String),

    `city` Nullable(String),

    `expeditor` Nullable(String),

    `tracking_country` Nullable(String),

    `tracking_seaport` Nullable(String),

    `is_auto_tracking` Nullable(Bool),

    `is_auto_tracking_ok` Nullable(Bool),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)

)
ENGINE = MergeTree()
ORDER BY uuid;
