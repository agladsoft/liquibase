CREATE TABLE IF NOT EXISTS default.import_nw
(

    `import_nw_id` Int32,

    `year` Nullable(Int32),

    `month` Nullable(Int32),

    `period` Nullable(String),

    `line` Nullable(String),

    `departure_port` Nullable(String),

    `shipper_name` Nullable(String),

    `consignee_name` Nullable(String),

    `expeditor` Nullable(String),

    `goods_name` Nullable(String),

    `container_type` Nullable(String),

    `container_size` Nullable(Int32),

    `container_count` Nullable(Int32),

    `terminal` Nullable(String),

    `teu` Nullable(Int32),

    `container_number` Nullable(String),

    `tnved` Nullable(String),

    `tnved_group_id` Nullable(String),

    `shipper_country` Nullable(String),

    `consignment` Nullable(String),

    `park_type` Nullable(String),

    `goods_weight_netto` Nullable(Decimal128(19)),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY import_nw_id;
