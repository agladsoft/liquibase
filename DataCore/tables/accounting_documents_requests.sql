CREATE TABLE IF NOT EXISTS DataCore.accounting_documents_requests
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `rejection_reason` Nullable(String),

    `status` Nullable(String),

    `performer` Nullable(String),

    `comment` Nullable(String),

    `start_date` Nullable(DateTime64),

    `manager` Nullable(String),

    `description` Nullable(String),

    `department` Nullable(String),

    `is_urgency` Nullable(Bool),

    `addressee_peo` Nullable(String),

    `end_date` Nullable(DateTime64),

    `request_date` Nullable(DateTime64),

    `original_request_date_string` Nullable(String),

    `order_number` Nullable(String),

    `request_type` Nullable(String),

    `request_number` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid