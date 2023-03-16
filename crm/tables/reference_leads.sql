CREATE TABLE IF NOT EXISTS crm.reference_leads
    (
    `statuscode` Nullable(Bigint),
    `reason_refusal` String
    )
ENGINE = MergeTree()
ORDER BY reason_refusal;