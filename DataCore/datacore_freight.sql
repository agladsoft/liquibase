CREATE TABLE IF NOT EXISTS DataCore.datacore_freight
(

    `uuid` UUID,

    `operationDate` Nullable(Date),

    `voyage` Nullable(String),

    `voyageDate` Nullable(Date),

    `isFreight` Nullable(String),

    `operationMonth` Nullable(Int32),

    `containerCount` Nullable(Int32),

    `portDischargeLoading` Nullable(String),

    `HSСode` Nullable(String),

    `containerSize` Nullable(Int32),

    `cargo` Nullable(String),

    `clientINN` Nullable(String),

    `manager` Nullable(String),

    `line` Nullable(String),

    `client` Nullable(String),

    `clientUID` Nullable(String),

    `operationSegment` Nullable(String),

    `vessel` Nullable(String),

    `department` Nullable(String),

    `container` Nullable(String),

    `orderDirection` Nullable(String),

    `orderNumber` Nullable(String),

    `containerType` Nullable(String),

    `bl` Nullable(String),

    `destination` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid