CREATE TABLE IF NOT EXISTS crm.opportunitysalesprocesses
    (
    `odata.etag` Nullable(String),
    `activestagestartedon` Nullable(Date),
    `_organizationid_value` Nullable(String),
    `_processid_value` Nullable(String),
    `traversedpath` Nullable(String),
    `statecode` Nullable(Integer),
    `statuscode` Nullable(Integer),
    `_createdby_value` Nullable(String),
    `modifiedon` Nullable(Date),
    `_modifiedby_value` Nullable(String),
    `businessprocessflowinstanceid` Nullable(String),
    `createdon` Nullable(Date),
    `versionnumber` Integer,
    `_activestageid_value` Nullable(String),
    `_opportunityid_value` Nullable(String),
    `name` Nullable(String),
    `_createdonbehalfby_value` Nullable(String),
    `_modifiedonbehalfby_value` Nullable(String),
    `_quoteid_value` Nullable(String),
    `overriddencreatedon` Nullable(String),
    `_salesorderid_value` Nullable(String),
    `_transactioncurrencyid_value` Nullable(String),
    `exchangerate` Nullable(Decimal128(19)),
    `completedon` Nullable(Date),
    `importsequencenumber` Nullable(Integer),
    `duration` Nullable(Integer)
    )
ENGINE = MergeTree()
ORDER BY versionnumber;