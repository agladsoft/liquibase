CREATE TABLE IF NOT EXISTS default.reference_ship
(

    `ship_name` String,

    `ship_name_unified` Nullable(String),

    `ship_imo` Nullable(Int32)
)
ENGINE = MergeTree()
ORDER BY ship_name;
