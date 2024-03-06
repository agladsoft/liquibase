CREATE TABLE IF NOT EXISTS DataCore.consignments
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `direction` Nullable(String),

    `year` Nullable(Int32),

    `voyage_date` Nullable(Date32),

    `original_voyage_date_string` Nullable(String),

    `voyage` Nullable(String),

    `cargo` Nullable(String),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `agent_line` Nullable(String),

    `line` Nullable(String),

    `teu` Nullable(Int32),

    `consignee` Nullable(String),

    `shipper` Nullable(String),

    `order_number` Nullable(String),

    `container_type` Nullable(String),

    `consignment` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid