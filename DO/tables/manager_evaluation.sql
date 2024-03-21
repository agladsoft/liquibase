CREATE TABLE IF NOT EXISTS DO.manager_evaluation
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `manager_id` Nullable(String),

    `manager_fullname` Nullable(String),

    `manager_email` Nullable(String),

    `manager_position` Nullable(String),

    `pluralist` Nullable(Bool),

    `manager_division` Nullable(String),

    `manager_department` Nullable(String),

    `manager_status` Nullable(String),

    `portal_profile` Nullable(String),

    `evaluation` Nullable(Int32),

    `comment` Nullable(String),

    `evaluation_date` Nullable(Date32),

    `original_date_string` Nullable(String),

    `company_email` Nullable(String),

    `message_id` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid