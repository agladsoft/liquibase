CREATE TABLE IF NOT EXISTS default.reference_lines
(

    `line` String,

    `line_unified` Nullable(String)
)
ENGINE = ReplacingMergeTree()
ORDER BY line;
