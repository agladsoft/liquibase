CREATE TABLE IF NOT EXISTS default.export_vsk
(

    `year` Nullable(Int32),

    `month` Int32,

    `shipment_date` Nullable(String),

    `terminal` Nullable(String),

    `line` Nullable(String),

    `expeditor` Nullable(String),

    `shipper_name` Nullable(String),

    `container_number` Nullable(String),

    `destination_port` Nullable(String),

    `goods_name` Nullable(String),

    `teu` Nullable(Int32),

    `container_size` Nullable(Int32),

    `container_type` Nullable(String),

    `shipper_country` Nullable(String),

    `shipper_region` Nullable(String),

    `gtd_number` Nullable(String),

    `park_type` Nullable(String),

    `tnved` Nullable(String),

    `ship_name` Nullable(String),

    `consignee_name` Nullable(String),

    `booking` Nullable(String),

    `tnved_group_id` Nullable(String),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY month;
