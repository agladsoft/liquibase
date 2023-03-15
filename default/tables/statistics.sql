CREATE TABLE IF NOT EXISTS default.statistics
(

    `month` Nullable(Int32),

    `year` Nullable(Int32),

    `ship_name` Nullable(String),

    `direction` Nullable(String),

    `is_empty` Nullable(Bool),

    `line` Nullable(String),

    `container_size` Nullable(Int32),

    `count` Nullable(Int32),

    `teu` Nullable(Int32) DEFAULT (container_size / 2),

    `date_arrive` Nullable(String),

    `date_leave` Nullable(String),

    `id` Int64
)
ENGINE = MergeTree()
ORDER BY id;