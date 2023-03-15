CREATE TABLE IF NOT EXISTS crm.lead_states
    (
    `statecode` Bigint,
    `state` Nullable(String),
    `state_one` Nullable(String),
    )
ENGINE = MergeTree()
ORDER BY statecode;