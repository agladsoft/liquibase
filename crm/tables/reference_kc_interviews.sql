CREATE TABLE IF NOT EXISTS crm.reference_kc_interviews
    (
    `statuscode` Nullable(Bigint),
    `status` String
    )
ENGINE = MergeTree()
ORDER BY status;