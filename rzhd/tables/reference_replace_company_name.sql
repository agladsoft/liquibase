CREATE TABLE IF NOT EXISTS rzhd.reference_replace_company_name
(

    `company_name` String,

    `company_name_unified` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY company_name;