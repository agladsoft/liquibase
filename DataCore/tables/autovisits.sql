CREATE TABLE IF NOT EXISTS DataCore.autovisits
(

    `uuid` DEFAULT generateUUIDv4(),

    `is_manual_select` Nullable(Bool),

    `rejection_reason` Nullable(String),

    `comment` Nullable(String),

    `processing_time` Nullable(Int32),

    `exit_datetime` Nullable(DateTime64),

    `entry_datetime` Nullable(DateTime64),

    `original_entry_datetime_string` Nullable(String),

    `result` Nullable(String),

    `waiting_time` Nullable(Int32),

    `status` Nullable(String),

    `container_number` Nullable(String),

    `purpose` Nullable(String),

    `registration_datetime` Nullable(DateTime64),

    `terminal` Nullable(String),

    `car_number` Nullable(String),

    `request_number` Nullable(String),

    `queue_id` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid