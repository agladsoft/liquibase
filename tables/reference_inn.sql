CREATE TABLE default.reference_inn
(

    `company_name` String,

    `company_inn` Nullable(String),

    `company_name_unified` Nullable(String),

    `company_name_rus` Nullable(String),

    `confidence_rate` Nullable(Decimal128(19)),

    `is_inn_found_auto` Nullable(UInt8),

    `is_company_name_international` Nullable(UInt8)
)
ENGINE = MergeTree()
ORDER BY company_name;
