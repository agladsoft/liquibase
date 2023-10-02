CREATE TABLE IF NOT EXISTS default.extrapolate
(

    `line` Nullable(String),

    `ship` Nullable(String),

    `terminal` Nullable(String),

    `date` Nullable(Date),

    `container_type` String,

    `container_size` Nullable(Int32),

    `count_container` UInt64,

    `goods_name` Nullable(String),

    `tracking_country` Nullable(String),

    `tracking_seaport` Nullable(String)
)
ENGINE = MergeTree
ORDER BY container_type