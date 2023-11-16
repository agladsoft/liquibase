CREATE TABLE IF NOT EXISTS DataCore.export_bookings
(

    `uuid` DEFAULT generateUUIDv4(),

    `clientUID` Nullable(String),

    `client` Nullable(String),

    `cargoReadiness` Nullable(String),

    `ETD` Nullable(Date32),

    `OF_LIFO` Nullable(String),

    `ETA` Nullable(Date32),

    `originalDate` Nullable(String),

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

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid