CREATE TABLE IF NOT EXISTS DataCore.reference_locations
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `seaport` Nullable(String),

    `seaport_eng` Nullable(String),

    `seaport_code` Nullable(String),

    `seaport_rus` Nullable(String),

    `key` Nullable(String),

    `type` Nullable(String),

    `status` Nullable(String),

    `postcode` Nullable(String),

    `lat_port` Nullable(Decimal128(12)),

    `long_port` Nullable(Decimal128(12)),

    `country` Nullable(String),

    `code` Nullable(String),

    `code_alpha_two` Nullable(String),

    `station_code` Nullable(String),

    `is_border_crossing` Nullable(Bool),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)