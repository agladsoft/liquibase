CREATE TABLE IF NOT EXISTS DataCore.completed_repackages_report
(

    `uuid` DEFAULT generateUUIDv4(),

    `warehouse_wms_count` Nullable(Int32),

    `inspection_container_count` Nullable(Int32),

    `import_teu` Nullable(Int32),

    `booking_list` Nullable(String),

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

    `repackingDate` Nullable(Date32),

    `originalDateString` Nullable(String),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid