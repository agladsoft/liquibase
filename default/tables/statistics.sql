CREATE TABLE IF NOT EXISTS default.statistics
(

    `month` Int32,

    `year` Nullable(Int32),

    `ship_name` Nullable(String),

    `direction` Nullable(String),

    `is_empty` Nullable(Bool),

    `line` Nullable(String),

    `container_size` Nullable(Int32),

    `count` Nullable(Int32),

    `teu` Nullable(Int32) DEFAULT (container_size / 20),

    `date_arrive` Nullable(String),

    `date_leave` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY month;
