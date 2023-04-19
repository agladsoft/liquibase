CREATE TABLE IF NOT EXISTS crm.reference_lead_sources
    (
    `gap_label` Nullable(String),
    `source_enlarged` Nullable(String),
    `leadsourcecode` Bigint
    )
ENGINE = MergeTree()
ORDER BY leadsourcecode;