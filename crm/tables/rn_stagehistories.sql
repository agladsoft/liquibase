CREATE TABLE IF NOT EXISTS crm.rn_stagehistories
    (
    `odata.etag` Nullable(String),
    `timezoneruleversionnumber` Nullable(Bigint),
    `versionnumber` Integer,
    `_owningbusinessunit_value` Nullable(String),
    `rn_stagestep` Nullable(Bigint),
    `_owninguser_value` Nullable(String),
    `statecode` Nullable(Bigint),
    `statuscode` Nullable(Bigint),
    `_createdby_value` Nullable(String),
    `rn_name` Nullable(String),
    `rn_stagehistoryid` Nullable(String),
    `_ownerid_value` Nullable(String),
    `modifiedon` Nullable(Date),
    `_rn_stageid_value` Nullable(String),
    `_modifiedby_value` Nullable(String),
    `_rn_opportunityid_value` Nullable(String),
    `createdon` Nullable(Date),
    `rn_eventdate` Nullable(Date),
    `utcconversiontimezonecode` Nullable(String),
    `overriddencreatedon` Nullable(String),
    `importsequencenumber` Nullable(String),
    `_modifiedonbehalfby_value` Nullable(String),
    `_createdonbehalfby_value` Nullable(String),
    `_owningteam_value` Nullable(String),
    `updates` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY versionnumber;