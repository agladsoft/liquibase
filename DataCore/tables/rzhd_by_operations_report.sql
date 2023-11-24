CREATE TABLE IF NOT EXISTS DataCore.rzhd_by_operations_report
(

    `uuid` DEFAULT generateUUIDv4(),

    `cargoOrder` Nullable(String),

    `cargoOperation` Nullable(String),

    `borderCrossing` Nullable(String),

    `clientUID` Nullable(String),

    `client` Nullable(String),

    `ETSNGname` Nullable(String),

    `containerSize` Nullable(Int32),

    `operationMonth` Nullable(Int32),

    `operationDate` Nullable(Date32),

    `originalDateString` Nullable(String),

    `direction` Nullable(String),

    `department` Nullable(String),

    `container` Nullable(String),

    `ETSNGcode` Nullable(String),

    `pointDepartureCode` Nullable(String),

    `pointDestination` Nullable(String),

    `manager` Nullable(String),

    `clientINN` Nullable(String),

    `pointDeparture` Nullable(String),

    `orderNumber` Nullable(String),

    `operationNumber` Nullable(String),

    `containerType` Nullable(String),

    `pointDestinationCode` Nullable(String),

    `operationYear` Nullable(Int32),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid