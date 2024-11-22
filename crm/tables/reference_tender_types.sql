CREATE TABLE IF NOT EXISTS crm.reference_tender_types
    (
    `type_code` String,
    `tender_type` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY type_code;