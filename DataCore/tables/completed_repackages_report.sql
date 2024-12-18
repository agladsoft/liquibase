CREATE TABLE IF NOT EXISTS DataCore.completed_repackages_report
(
    `key_id` String,

    `uuid` DEFAULT generateUUIDv4(),

    `warehouse_wms_count` Nullable(Int32),

    `inspection_container_count` Nullable(Int32),

    `import_teu` Nullable(Int32),

    `consignment` Nullable(String),

    `import_container_count` Nullable(Int32),

    `terminal` Nullable(String),

    `export_teu` Nullable(Int32),

    `zatarka_object_type` Nullable(String),

    `rastarka_object_type` Nullable(String),

    `repacking_place` Nullable(String),

    `operation_type` Nullable(String),

    `container_number` Nullable(String),

    `export_container_count` Nullable(Int32),

    `cargo` Nullable(String),

    `technology` Nullable(String),

    `repacking_date` Nullable(Date32),

    `original_repacking_date_string` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `sign` Int8,

    `is_obsolete_date` Nullable(String)
)
ENGINE = CollapsingMergeTree(sign)
ORDER BY (key_id, uuid)