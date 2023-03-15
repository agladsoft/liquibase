CREATE TABLE IF NOT EXISTS default.export
(

    `ship` Nullable(String),

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

    `count` String DEFAULT 1,

    `teu` Nullable(Int32) DEFAULT (container_size / 20),

    `voyage` Nullable(String),

    `unload_country` Nullable(String),

    `city` Nullable(String),

    `unload_seaport` Nullable(String),

    `year` Nullable(Int32) DEFAULT toYear(date),

    `month` Nullable(Int32) DEFAULT toMonth(date),

    `goods_tnved` Nullable(String),

    `parsed_on` Date,

    `month_parsed_on` Nullable(Int32) DEFAULT toMonth(parsed_on),

    `year_parsed_on` Nullable(Int32) DEFAULT toYear(parsed_on),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `shipper_inn` Nullable(String),

    `expeditor` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY parsed_on;
