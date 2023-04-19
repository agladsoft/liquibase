CREATE TABLE IF NOT EXISTS crm.reference_kc_interviews
    (
    `statuscode` Bigint,
    `status` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY statuscode;