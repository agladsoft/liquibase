CREATE TABLE IF NOT EXISTS DataCore.orders_marginality_report
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `expenses_rental_without_vat_fact` Nullable(Decimal128(12)),

    `income_without_vat_fact` Nullable(Decimal128(12)),

    `profit_plan` Nullable(Decimal128(12)),

    `income_without_vat_plan` Nullable(Decimal128(12)),

    `expenses_without_vat_plan` Nullable(Decimal128(12)),

    `manager` Nullable(String),

    `organization_uid` Nullable(String),

    `segment_decryption` Nullable(String),

    `organization` Nullable(String),

    `client_uid` Nullable(String),

    `expenses_without_vat_fact` Nullable(Decimal128(12)),

    `department` Nullable(String),

    `client` Nullable(String),

    `segment` Nullable(String),

    `order_number` Nullable(String),

    `profit_fact` Nullable(Decimal128(12)),

    `order_creation_date` Nullable(Date32),

    `original_order_creation_date_string` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)