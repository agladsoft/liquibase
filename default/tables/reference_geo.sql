CREATE TABLE IF NOT EXISTS default.reference_geo
(

    `seaport` Nullable(String),

    `country` Nullable(String),

    `lat_port` Nullable(Float32),

    `long_port` Nullable(Float32),

    `id` Int64
)
ENGINE = MergeTree()
ORDER BY id;
