CREATE TABLE IF NOT EXISTS default.reference_ref
(

    `goods_name` String,

    `category_im` Nullable(String),

    `category_ex` Nullable(String)
)
ENGINE = ReplacingMergeTree()
ORDER BY goods_name;