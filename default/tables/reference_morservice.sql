CREATE TABLE IF NOT EXISTS default.reference_morservice
(

    `month` Int32,

    `year` Nullable(Int32),

    `direction` Nullable(String),

    `is_empty` Nullable(UInt8),

    `container_type` Nullable(String),

    `teu` Nullable(Float32),

    `is_ref` Nullable(Bool) DEFAULT if(upper(container_type) = 'REF', true, false)
)
ENGINE = MergeTree()
ORDER BY month;
