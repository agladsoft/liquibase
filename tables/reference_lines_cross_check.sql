CREATE TABLE default.reference_lines_cross_check
(
    `line` String,
    `line_unified` Nullable(String)
)
ENGINE = MergeTree
ORDER BY tuple(line)