CREATE TABLE default.reference_is_empty
(

    `is_empty` String
)
ENGINE = MergeTree()
ORDER BY is_empty;
