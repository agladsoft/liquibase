CREATE TABLE IF NOT EXISTS default.reference_container_type
(

    `container_type` String,

    `container_type_unified` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY container_type;
