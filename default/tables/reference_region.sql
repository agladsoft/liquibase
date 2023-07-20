CREATE TABLE IF NOT EXISTS default.reference_region
(

    `seaport` String,

    `seaport_unified` Nullable(String),

    `country` Nullable(String),

    `region` Nullable(String)
)
ENGINE = ReplacingMergeTree()
ORDER BY seaport;
