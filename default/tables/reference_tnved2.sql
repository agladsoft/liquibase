CREATE TABLE IF NOT EXISTS default.reference_tnved2
(

    `section_tnved` String,

    `group_tnved` Nullable(String),

    `goods_name` Nullable(String),

    `notation` Nullable(String),

    `start_date_group` Nullable(Date),

    `expire_date_group` Nullable(Date)
)
ENGINE = MergeTree()
ORDER BY section_tnved;
