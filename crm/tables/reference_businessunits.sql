CREATE TABLE IF NOT EXISTS crm.reference_businessunits
    (
    `businessunitidname` Nullable(String),
    `directory_divisions` String
    )
ENGINE = MergeTree()
ORDER BY directory_divisions;