CREATE TABLE IF NOT EXISTS DataCore.forecast
(

    `month_parsed_on` Nullable(Int32),

    `year_parsed_on` Nullable(Int32),

    `load_port` Nullable(String),

    `discharge_port` Nullable(String),

    `cargo_readiness` Nullable(String),

    `vessel_voyage` Nullable(String),

    `week_readiness` Nullable(String),

    `container_count` Nullable(Int32),

    `container_size` Nullable(Int32),

    `container_type` Nullable(String),

    `teu` Nullable(Int32) DEFAULT (container_size / 20) * container_count,

    `cargo_weight` Nullable(String),

    `cargo_name` Nullable(String),

    `dangerous_cargo_imo` Nullable(String),

    `original_file_name` String,

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY original_file_name