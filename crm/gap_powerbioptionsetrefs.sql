CREATE TABLE IF NOT EXISTS crm.gap_powerbioptionsetrefs
    (
    `@odata.etag` Nullable(String),
    `_organizationid_value` Nullable(String),
    `statecode` Nullable(Integer),
    `statuscode` Nullable(Integer),
    `gap_label` Nullable(String),
    `gap_powerbioptionsetrefid` Nullable(String),
    `modifiedon` Nullable(Date),
    `_modifiedby_value` Nullable(String),
    `gap_entityschemaname` Nullable(String),
    `versionnumber` Integer,
    `gap_entityname` Nullable(String),
    `gap_optionsetschemaname` Nullable(String),
    `gap_value` Nullable(Integer),
    `gap_language` Nullable(Integer),
    `createdon` Nullable(Date),
    `_createdby_value` Nullable(String),
    `gap_imageurl` Nullable(String),
    `overriddencreatedon` Nullable(String),
    `_modifiedonbehalfby_value` Nullable(String),
    `importsequencenumber` Nullable(String),
    `_createdonbehalfby_value` Nullable(String),
    `timezoneruleversionnumber` Nullable(String),
    `utcconversiontimezonecode` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY versionnumber;