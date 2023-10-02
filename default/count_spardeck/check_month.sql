CREATE TABLE IF NOT EXISTS default.check_month
(
    `id` Integer Default 1,

    `month` Nullable(Integer),

    `year` Nullable(Integer),

    `if_ref` Nullable(Bool)
)
ENGINE = MergeTree()
ORDER BY id;
