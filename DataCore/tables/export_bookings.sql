CREATE TABLE IF NOT EXISTS DataCore.export_bookings
(
    `uuid` DEFAULT generateUUIDv4(),

    `bookingStatus` Nullable(String),

    `basinPOD` Nullable(String),

    `clientUID` Nullable(String),

    `client` Nullable(String),

    `basinPOL` Nullable(String),

    `cargoReadiness` Nullable(Date32),

    `ETD` Nullable(Date32),

    `OF_LIFO` Nullable(String),

    `containerSize` Nullable(Int32),

    `ETA` Nullable(Date32),

    `originalDateString` Nullable(String),

    `voyage` Nullable(String),

    `containerCount` Nullable(Int32),

    `POD` Nullable(String),

    `POL` Nullable(String),

    `direction` Nullable(String),

    `FreightRate` Nullable(Int32),

    `line` Nullable(String),

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