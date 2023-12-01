CREATE TABLE IF NOT EXISTS DataCore.auto_pickup_general_report
(

    `uuid` DEFAULT generateUUIDv4(),

    `comment` Nullable(String),

    `performer` Nullable(String),

    `overpayment` Nullable(Int32),

    `total_rate` Nullable(Int32),

    `downtime_amount` Nullable(Int32),

    `agreed_rate` Nullable(Int32),

    `carrier` Nullable(String),

    `date_delivery_empty_fact` Nullable(Date32),

    `original_date_delivery_empty_fact_string` Nullable(String),

    `date_delivery_empty_plan` Nullable(Date32),

    `date_loading_fact` Nullable(Date32),

    `mode` Nullable(String),

    `date_delivery_fact` Nullable(Date32),

    `container_size` Nullable(Int32),

    `overload_amount` Nullable(Int32),

    `line` Nullable(String),

    `client` Nullable(String),

    `client_uid` Nullable(String),

    `date_receiving_empty_fact` Nullable(Date32),

    `department` Nullable(String),

    `date_delivery_plan` Nullable(Date32),

    `destination_point` Nullable(String),

    `manager` Nullable(String),

    `carrier_rate` Nullable(Int32),

    `departure_point` Nullable(String),

    `terminal_receiving_empty` Nullable(String),

    `container_number` Nullable(String),

    `terminal_delivery_empty` Nullable(String),

    `date_loading_plan` Nullable(Date32),

    `direction` Nullable(String),

    `container_type` Nullable(String),

    `transportation_type` Nullable(String),

    `economy` Nullable(Int32),

    `order_number` Nullable(String),

    `increased_rates_reason` Nullable(String),

    `service` Nullable(String),

    `date_receiving_empty_plan` Nullable(Date32),

    `add_expense_amount` Nullable(Int32),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid