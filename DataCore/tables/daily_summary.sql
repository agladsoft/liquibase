CREATE TABLE IF NOT EXISTS DataCore.daily_summary
(

    `uuid` DEFAULT generateUUIDv4(),

    `organizationUID` Nullable(String),

    `comment` Nullable(String),

    `weightCargo` Nullable(Int32),

    `blIMP` Nullable(String),

    `VTT_GTD` Nullable(String),

    `cargo` Nullable(String),

    `pointDestination` Nullable(String),

    `transportType` Nullable(String),

    `clientUID` Nullable(String),

    `terminal` Nullable(String),

    `motionType` Nullable(String),

    `seal` Nullable(String),

    `manager` Nullable(String),

    `pointDeparture` Nullable(String),

    `transportNumber` Nullable(String),

    `weightTare` Nullable(Int32),

    `organization` Nullable(String),

    `tonnage` Nullable(Int32),

    `SO` Nullable(String),

    `client` Nullable(String),

    `line` Nullable(String),

    `orderNumber` Nullable(String),

    `containerType` Nullable(String),

    `containerSize` Nullable(Int32),

    `blEXP` Nullable(String),

    `containerState` Nullable(String),

    `container` Nullable(String),

    `forwarder` Nullable(String),

    `damagesNote` Nullable(String),

    `motionDate` Nullable(Date32),

    `originalDateString` Nullable(String),

    `isRequestLine` Nullable(Bool),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid