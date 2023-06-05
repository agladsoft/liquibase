CREATE TABLE IF NOT EXISTS crm.overall_evaluation_marketing_opr
    (
    `kc_ratingcode` Bigint,
    `evaluation` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY kc_ratingcode;