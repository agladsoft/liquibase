CREATE TABLE IF NOT EXISTS DataCore.orders_marginality_report
(

    `uuid` DEFAULT generateUUIDv4(),

    `expenses_rental_without_vat_fact` Nullable(Decimal128(19)),

    `income_without_vat_fact` Nullable(Decimal128(19)),

    `profit_plan` Nullable(Decimal128(19)),

    `income_without_vat_plan` Nullable(Decimal128(19)),

    `expenses_without_vat_plan` Nullable(Decimal128(19)),

    `manager` Nullable(String),

    `organizationUID` Nullable(String),

    `segment_decryption` Nullable(String),

    `organization` Nullable(String),

    `clientUID` Nullable(String),

    `expenses_without_vat_fact` Nullable(Decimal128(19)),

    `department` Nullable(String),

    `client` Nullable(String),

    `segment` Nullable(String),

    `order_number` Nullable(String),

    `profit_fact` Nullable(Decimal128(19)),

    `order_creation_date` Nullable(Date32),

    `originalDateString` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid