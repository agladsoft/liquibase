CREATE MATERIALIZED VIEW default.all_enriched
(

    `month` Int32,

    `year` Nullable(Int32),

    `direction` Nullable(String),

    `terminal` Nullable(String),

    `line_unified` Nullable(String),

    `ship_name_unified` Nullable(String),

    `voyage` Nullable(String),

    `shipment_date` Nullable(Date),

    `container_number` Nullable(String),

    `container_size` Nullable(Int32),

    `container_type_unified` Nullable(String),

    `teu` Nullable(Int32),

    `container_count` Nullable(Int32),

    `is_empty` Nullable(Bool),

    `goods_name` Nullable(String),

    `tnved_group_id` Nullable(String),

    `tnved_group_name` Nullable(String),

    `goods_weight_with_package` Nullable(Decimal(38, 19)),

    `company` Nullable(String),

    `company_inn` Nullable(String),

    `company_unified` Nullable(String),

    `expeditor` Nullable(String),

    `tracking_country_unified` Nullable(String),

    `tracking_seaport_unified` Nullable(String),

    `region` Nullable(String),

    `lat_port` Nullable(Float32),

    `long_port` Nullable(Float32),

    `geopolygon` Nullable(String),

    `geopoint` Nullable(String)
)
ENGINE = MergeTree
ORDER BY month
POPULATE AS
SELECT * FROM default.all_enriched_interim
SETTINGS
allow_experimental_refreshable_materialized_view=1