CREATE TABLE default.export_grain
(

    `date` Date,

    `month` Nullable(Int32),

    `year` Nullable(Int32),

    `customer` Nullable(String),

    `goods_name` Nullable(String),

    `shipper_name` Nullable(String),

    `consignee_name` Nullable(String),

    `transport_type` Nullable(String),

    `goods_weight_tonne` Nullable(Decimal128(19)),

    `terminal_and_location` Nullable(String),

    `terminal_name` Nullable(String),

    `terminal_address` Nullable(String),

    `shipper_country` Nullable(String),

    `consignee_country` Nullable(String)
)
ENGINE = MergeTree
ORDER BY date