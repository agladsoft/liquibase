CREATE TABLE IF NOT EXISTS merchants.reference_stations
(

    `station` String,

    `station_unified` Nullable(String)
)
ENGINE = ReplacingMergeTree
ORDER BY station