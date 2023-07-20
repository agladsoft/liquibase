CREATE TABLE IF NOT EXISTS default.reference_lines_cross_check
(
    `line` String,
    `line_unified` Nullable(String)
)
ENGINE = ReplacingMergeTree()
ORDER BY line;