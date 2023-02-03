CREATE TABLE default.reference_region
(

    `seaport` String,

    `seaport_unified` Nullable(String),

    `country` Nullable(String),

    `region` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY seaport;
