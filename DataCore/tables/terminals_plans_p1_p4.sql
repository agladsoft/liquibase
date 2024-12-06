CREATE TABLE IF NOT EXISTS DataCore.terminals_plans_p1_p4
(
    `uuid` DEFAULT generateUUIDv4(),

    `department` Nullable(String),

    `client` Nullable(String),

    `cargo` Nullable(String),

    `direction` Nullable(String),

    `container_size` Nullable(Int32),

    `rate` Nullable(Decimal128(12)),

    `service` Nullable(String),

    `technology` Nullable(String),

    `co_executors` Nullable(String),

    `sector` Nullable(String),

    `source` Nullable(String),

    `section` Nullable(String),

    `month` Nullable(Int32),

    `container_count` Nullable(Int32),

    `teu` Nullable(Int32),

    `amount_thousand_rubles` Nullable(Decimal128(12)),

    `year` Nullable(Int32),

    `original_file_name` String,

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY original_file_name