CREATE TABLE IF NOT EXISTS merchants.automation_shippers_consignees
(

    `uuid` UUID DEFAULT generateUUIDv4(),

    `seller` Nullable(String),

    `seller_taxpayer_id` Nullable(String),

    `seller_unified` Nullable(String),

    `seller_priority` Nullable(String),

    `seller_priority_taxpayer_id` Nullable(String),

    `seller_priority_unified` Nullable(String),

    `buyer` Nullable(String),

    `buyer_taxpayer_id` Nullable(String),

    `buyer_unified` Nullable(String),

    `buyer_priority` Nullable(String),

    `buyer_priority_taxpayer_id` Nullable(String),

    `buyer_priority_unified` Nullable(String),

    `destination_station` Nullable(String),

    `container_number` Nullable(String),

    `tnved_code` Nullable(String),

    `input_data` Nullable(String),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid