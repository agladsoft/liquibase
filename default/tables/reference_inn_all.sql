CREATE TABLE default.reference_inn_all
(

    `company_name` String,

    `company_inn` Nullable(String),

    `company_name_unified` Nullable(String),

    `company_name_unified_en` Nullable(String),

    `company_name_rus` Nullable(String),

    `request_to_yandex` Nullable(String),

    `sum_count_inn` Nullable(Int32),

    `company_inn_max_rank` Nullable(Int32),

    `count_inn_in_fts` Nullable(Int32),

    `is_fts_found` Nullable(Bool),

    `fts_company_name` Nullable(String),

    `company_inn_count` Nullable(Int32),

    `confidence_rate` Nullable(Int32),

    `is_inn_found_auto` Nullable(Bool),

    `is_company_name_from_cache` Nullable(Bool),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY company_name