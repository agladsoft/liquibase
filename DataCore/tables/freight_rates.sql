CREATE TABLE IF NOT EXISTS DataCore.freight_rates
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `priority` Nullable(Bool),

    `oversized_width` Nullable(Int32),

    `oversized_height` Nullable(Int32),

    `oversized_length` Nullable(Int32),

    `oversized` Nullable(Bool),

    `dangerous` Nullable(Bool),

    `client` Nullable(String),

    `imo` Nullable(String),

    `pol` Nullable(String),

    `pod` Nullable(String),

    `type_pol` Nullable(String),

    `type_pod` Nullable(String),

    `expiration_date` Nullable(Date32),

    `start_date` Nullable(Date32),

    `forwarder` Nullable(String),

    `through_service` Nullable(String),

    `rate_owner` Nullable(String),

    `line` Nullable(String),

    `size_and_type` Nullable(String),

    `rate` Nullable(Decimal128(12)),

    `currency` Nullable(String),

    `special_rate` Nullable(Bool),

    `code_special_rate` Nullable(String),

    `operator` Nullable(String),

    `container_owner` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid