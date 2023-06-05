CREATE TABLE IF NOT EXISTS crm.reference_businessunits
    (
    `businessunitidname` String,
    `businessunitid` Nullable(String),
    `department_segmentation` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY businessunitidname;