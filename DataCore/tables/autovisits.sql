CREATE TABLE IF NOT EXISTS DataCore.autovisits
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `processing_place` Nullable(String),

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

    `repacking_place` Nullable(String),

    `terminal` Nullable(String),

    `car_number` Nullable(String),

    `request_number` Nullable(String),

    `queue_id` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)