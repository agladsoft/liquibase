CREATE TABLE IF NOT EXISTS default.reference_is_empty
(

    `is_empty` String
)
ENGINE = ReplacingMergeTree()
ORDER BY is_empty;
