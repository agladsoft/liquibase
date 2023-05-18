CREATE TABLE IF NOT EXISTS rzhd.reference_container_type
(

    `type_of_special_container` String,

    `container_type_unified` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY type_of_special_container;