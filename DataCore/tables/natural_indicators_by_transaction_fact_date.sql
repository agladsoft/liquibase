CREATE TABLE IF NOT EXISTS DataCore.natural_indicators_by_transaction_fact_date
(

    uuid UUID DEFAULT generateUUIDv4(),

    operationDate Nullable(Date32),

    originalDate Nullable(String),

    containerCount_20 Nullable(Int32),

    operationMonth Nullable(Int32),

    containerCount Nullable(Int32),

    containerTEU Nullable(Int32),

    manager Nullable(String),

    operationYear Nullable(Int32),

    containerCount_40 Nullable(Int32),

    orderNumber Nullable(String),

    direction Nullable(String),

    client Nullable(String),

    orderDate Nullable(Date32),

    clientUID Nullable(String),

    department Nullable(String),

    original_file_parsed_on Nullable(String),

    is_obsolete Nullable(Bool),

    is_obsolete_date Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid