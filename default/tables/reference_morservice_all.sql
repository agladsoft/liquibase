CREATE TABLE IF NOT EXISTS default.reference_morservice_all
(

    `month` Int32,

    `quarter` Nullable(Int32),

    `year` Nullable(Int32),

    `datetime` Nullable(Date),

    `bay` Nullable(String),

    `port` Nullable(String),

    `direction` Nullable(String),

    `terminal_operator` Nullable(String),

    `is_empty` Nullable(Bool),

    `container_type` Nullable(String),

    `teu` Nullable(Float32),

    `is_ref` Nullable(Bool) DEFAULT if(upper(container_type) = 'REF', true, false)
)
ENGINE = MergeTree()
ORDER BY month;