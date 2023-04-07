CREATE TABLE IF NOT EXISTS default.export_nw
(
    `period` Nullable(String),

    `month` Int32,

    `year` Nullable(Int32),

    `terminal` Nullable(String),

    `line` Nullable(String),

    `ship_name` Nullable(String) DEFAULT 'Нет данных',

    `voyage` Nullable(String) DEFAULT 'Нет данных',

    `shipment_date` Nullable(Date),

    `booking` Nullable(String),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `container_type` Nullable(String),

    `teu` Nullable(Int32),

    `container_count` Nullable(Int32),

    `is_empty` Nullable(Bool),

    `goods_name` Nullable(String),

    `tnved` Nullable(String),

    `tnved_group_id` Nullable(String),

    `goods_weight_netto` Nullable(Decimal128(19)),

    `shipper_name` Nullable(String),

    `consignee_name` Nullable(String),

    `shipper_country` Nullable(String),

    `expeditor` Nullable(String),

    `traсking_seaport` Nullable(String),

    `gtd_number` Nullable(String),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY month;
