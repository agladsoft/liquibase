CREATE TABLE default.export
(

    `ship` Nullable(String),

    `export_id` Int32,

    `date` Nullable(Date),

    `terminal` Nullable(String),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `container_type` Nullable(String),

    `goods_name_rus` Nullable(String),

    `consignment` Nullable(String),

    `shipper` Nullable(String),

    `consignee` Nullable(String),

    `line` Nullable(String),

    `count` Nullable(String),

    `teu` Nullable(Int32),

    `voyage` Nullable(String),

    `unload_country` Nullable(String),

    `city` Nullable(String),

    `unload_seaport` Nullable(String),

    `year` Nullable(Int32),

    `month` Nullable(Int32),

    `goods_tnved` Nullable(String),

    `parsed_on` Nullable(Date),

    `month_parsed_on` Nullable(Int32),

    `year_parsed_on` Nullable(Int32),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `shipper_inn` Nullable(String),

    `expeditor` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY export_id;
