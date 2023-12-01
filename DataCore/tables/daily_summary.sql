CREATE TABLE IF NOT EXISTS DataCore.daily_summary
(

    `uuid` DEFAULT generateUUIDv4(),

    `organization_uid` Nullable(String),

    `comment` Nullable(String),

    `direction` Nullable(String),

    `cargo_weight` Nullable(Int32),

    `consignment_imp` Nullable(String),

    `vtt_gtd` Nullable(String),

    `cargo` Nullable(String),

    `destination_point` Nullable(String),

    `transport_type` Nullable(String),

    `client_uid` Nullable(String),

    `terminal` Nullable(String),

    `motion_type` Nullable(String),

    `seal` Nullable(String),

    `manager` Nullable(String),

    `departure_point` Nullable(String),

    `transport_number` Nullable(String),

    `tare_weight` Nullable(Int32),

    `organization` Nullable(String),

    `tonnage` Nullable(Int32),

    `is_so` Nullable(String),

    `client` Nullable(String),

    `line` Nullable(String),

    `order_number` Nullable(String),

    `container_type` Nullable(String),

    `container_size` Nullable(Int32),

    `consignment_exp` Nullable(String),

    `container_state` Nullable(String),

    `container_number` Nullable(String),

    `forwarder` Nullable(String),

    `damages_note` Nullable(String),

    `motion_date` Nullable(Date32),

    `original_motion_date_string` Nullable(String),

    `is_request_line` Nullable(Bool),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid