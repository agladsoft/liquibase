CREATE TABLE IF NOT EXISTS crm.reference_tender_results
    (
    `result_code` String,
    `tender_result` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY result_code;