CREATE TABLE IF NOT EXISTS DataCore.rmq_log
(
    `uuid` DEFAULT generateUUIDv4(),

    `database` Nullable(String),

    `table` String,

    `queue` String,

    `key_id` String,

    `datetime` DateTime64,

    `is_success` Bool,

    `message` String
)
ENGINE = MergeTree
ORDER BY key_id