CREATE TABLE IF NOT EXISTS DataCore.import_bookings
(

    `uuid` DEFAULT generateUUIDv4(),

    `bookingStatus` Nullable(String),

    `basinPOD` Nullable(String),

    `clientUID` Nullable(String),

    `client` Nullable(String),

    `basinPOL` Nullable(String),

    `ETD` Nullable(Date32),

    `containerSize` Nullable(Int32),

    `ETA` Nullable(Date32),

    `originalDateString` Nullable(String),

    `FreightTerms` Nullable(String),

    `voyage` Nullable(String),

    `containerCount` Nullable(Int32),

    `POD` Nullable(String),

    `POL` Nullable(String),

    `direction` Nullable(String),

    `FreightRate` Nullable(Int32),

    `Remarks` Nullable(String),

    `line` Nullable(String),

    `Consignee` Nullable(String),

    `serviceNumber` Nullable(String),

    `department` Nullable(String),

    `vessel` Nullable(String),

    `orderNumber` Nullable(String),

    `containerType` Nullable(String),

    `bookingDate` Nullable(Date32),

    `manager` Nullable(String),

    `booking` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid