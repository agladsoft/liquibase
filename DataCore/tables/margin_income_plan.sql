CREATE TABLE IF NOT EXISTS DataCore.margin_income_plan
(

    `uuid` DEFAULT generateUUIDv4(),

    `year` Nullable(Int32),

    `month` Nullable(Int32),

    `department` Nullable(String),

    `income_thousand_rub` Nullable(Decimal128(12)),

    `expenses_thousand_rub` Nullable(Decimal128(12)),

    `margin_income_thousand_rub` Nullable(Decimal128(12)),

    `original_file_name` String,

    `original_file_parsed_on` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid