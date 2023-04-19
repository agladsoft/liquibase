CREATE TABLE IF NOT EXISTS crm.reference_lead_states
    (
    `statecode` Bigint,
    `state` Nullable(String),
    `state1` Nullable(String),
    )
ENGINE = MergeTree()
ORDER BY statecode;