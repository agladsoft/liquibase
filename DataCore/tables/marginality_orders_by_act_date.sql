CREATE TABLE IF NOT EXISTS DataCore.marginality_orders_by_act_date
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `act_creation_date` Nullable(Date32),

    `original_act_creation_date_string` Nullable(String),

    `department` Nullable(String),

    `direction` Nullable(String),

    `client_uid` Nullable(String),

    `client` Nullable(String),

    `manager` Nullable(String),

    `operation_type` Nullable(String),

    `segment` Nullable(String),

    `order_number` Nullable(String),

    `count_ktk_by_order` Nullable(Int32),

    `count_ktk_by_operation` Nullable(Int32),

    `profit_plan` Nullable(Decimal128(12)),

    `variable_costs_plan` Nullable(Decimal128(12)),

    `margin_plan` Nullable(Decimal128(12)),

    `profit_fact` Nullable(Decimal128(12)),

    `variable_costs_fact` Nullable(Decimal128(12)),

    `margin_fact` Nullable(Decimal128(12)),

    `margin_fact_percent` Nullable(Decimal128(12)),

    `margin_fact_per_unit` Nullable(Decimal128(12)),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)