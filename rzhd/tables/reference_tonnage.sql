CREATE TABLE IF NOT EXISTS rzhd.reference_tonnage
(

    `container_tonnage` String,

    `container_tonnage_unified` Nullable(Integer)
)
ENGINE = MergeTree()
ORDER BY container_tonnage;