CREATE TABLE IF NOT EXISTS DataCore.autovisits
(

    `uuid` DEFAULT generateUUIDv4(),

    `manualSelect` Nullable(Bool),

    `rejectionReason` Nullable(String),

    `comment` Nullable(String),

    `processingTime` Nullable(Int32),

    `exitDate` Nullable(DateTime64),

    `entryDate` Nullable(DateTime64),

    `result` Nullable(String),

    `waitingTime` Nullable(Int32),

    `status` Nullable(String),

    `container` Nullable(String),

    `purpose` Nullable(String),

    `registrationDate` Nullable(DateTime64),

    `terminal` Nullable(String),

    `carNumber` Nullable(String),

    `request` Nullable(String),

    `queueID` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid