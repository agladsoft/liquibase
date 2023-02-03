CREATE TABLE default.reference_lines
(

    `line` String,

    `line_unified` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY line;
