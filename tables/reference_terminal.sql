CREATE TABLE default.reference_terminal
(

    `terminal` String,

    `lat_terminal` Nullable(Float32),

    `long_terminal` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY terminal;
