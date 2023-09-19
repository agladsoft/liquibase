CREATE TABLE IF NOT EXISTS default.reference_inn
(

    `company_name` String,

    `company_inn` Nullable(String),

    `company_name_unified` Nullable(String),

    `company_name_rus` Nullable(String),

    `confidence_rate` Nullable(Integer),

    `is_inn_found_auto` Nullable(Bool),

    `is_company_name_from_cache` Nullable(Bool),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = ReplacingMergeTree()
ORDER BY company_name;
