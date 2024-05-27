CREATE TABLE IF NOT EXISTS DO.reference_organizations
(

    `uuid` DEFAULT generateUUIDv4(),

    `organization_uid` Nullable(String),

    `organization` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid