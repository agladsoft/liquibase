CREATE TABLE IF NOT EXISTS default.reference_geo
(

    `seaport` Nullable(String),

    `country` String,

    `lat_port` Nullable(Float32),

    `long_port` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY country;
