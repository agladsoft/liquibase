CREATE TABLE IF NOT EXISTS default.reference_geo
(

    `seaport` String,

    `country` Nullable(String),

    `lat_port` Nullable(Float32),

    `long_port` Nullable(Float32)
)
ENGINE = ReplacingMergeTree()
ORDER BY seaport;
