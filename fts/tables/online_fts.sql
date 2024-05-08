CREATE TABLE IF NOT EXISTS fts.online_fts
(
    `month` Int32,

    `year` Nullable(Int32),

    `direction` Nullable(String),

    `country` Nullable(String),

    `tnved` Nullable(String),

    `goods_description` Nullable(String),

    `net_weight_kg` Nullable(Decimal128(12)),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY month;
