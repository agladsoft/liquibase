CREATE TABLE IF NOT EXISTS crm.reference_businessunits
    (
    `businessunitidname` Nullable(String),
    `businessunitid` Nullable(String),
    `department_segmentation` String
    )
ENGINE = MergeTree()
ORDER BY department_segmentation;