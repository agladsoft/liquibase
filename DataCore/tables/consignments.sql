CREATE TABLE IF NOT EXISTS DataCore.consignments
(

    `uuid` DEFAULT generateUUIDv4(),

    `direction` Nullable(String),

    `year` Nullable(Int32),

    `voyageDate` Nullable(Date32),

    `originalDateString` Nullable(String),

    `voyage` Nullable(String),

    `cargo` Nullable(String),

    `container` Nullable(String),

    `containerSize` Nullable(Int32),

    `agentLine` Nullable(String),

    `line` Nullable(String),

    `teus` Nullable(Int32),

    `consignee` Nullable(String),

    `shipper` Nullable(String),

    `orderNumber` Nullable(String),

    `containerType` Nullable(String),

    `booking_list` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid