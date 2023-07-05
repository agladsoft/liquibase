CREATE TABLE IF NOT EXISTS crm.processstages
    (
    `odata.etag` Nullable(String),
    `_ownerid_value` Nullable(String),
    `_processid_value` Nullable(String),
    `owningbusinessunit` Nullable(String),
    `stagename` Nullable(String),
    `versionnumber` Integer,
    `primaryentitytypecode` Nullable(String),
    `clientdata` Nullable(String),
    `processstageid` Nullable(String),
    `stagecategory` Nullable(Integer)
    )
ENGINE = MergeTree()
ORDER BY versionnumber;