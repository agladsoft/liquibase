CREATE TABLE IF NOT EXISTS crm.reference_lead_sources
    (
    `gap_label` Nullable(String),
    `source_enlarged` String,
    `leadsourcecode` Nullable(Bigint)
    )
ENGINE = MergeTree()
ORDER BY source_enlarged;