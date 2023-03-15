CREATE TABLE IF NOT EXISTS default.reference_morservice
(

    `month` Nullable(Int32),

    `year` Nullable(Int32),

    `direction` Nullable(String),

    `is_empty` Nullable(UInt8),

    `container_type` Nullable(String),

    `teu` Nullable(Float32),

    `is_ref` Nullable(UInt8),

    `id` Int64
)
ENGINE = MergeTree()
ORDER BY id;
