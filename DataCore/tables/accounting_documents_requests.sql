CREATE TABLE IF NOT EXISTS DataCore.accounting_documents_requests
(

    `uuid` DEFAULT generateUUIDv4(),

    `rejectionReason` Nullable(String),

    `status` Nullable(String),

    `performer` Nullable(String),

    `comment` Nullable(String),

    `startDate` Nullable(DateTime64),

    `manager` Nullable(String),

    `description` Nullable(String),

    `department` Nullable(String),

    `urgency` Nullable(Bool),

    `addresseePEO` Nullable(String),

    `endDate` Nullable(DateTime64),

    `requestDate` Nullable(DateTime64),

    `originalDateString` Nullable(String),

    `subjectNumber` Nullable(String),

    `type` Nullable(String),

    `requestNumber` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid