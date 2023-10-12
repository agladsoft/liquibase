CREATE TABLE IF NOT EXISTS production_industry.production_industry_base
(
    `uuid` UUID DEFAULT generateUUIDv4(),

    `production_industry_sector` Nullable(String),

    `custom_code` Nullable(String),

    `registration_date` Nullable(Date),

    `sender_tin` Nullable(String),

    `sender_name` Nullable(String),

    `recipient_name` Nullable(String),

    `declarant_tin` Nullable(String),

    `declarant_name` Nullable(String),

    `declarant_country_code` Nullable(String),

    `destination_country` Nullable(String),

    `container_transportation_sign` Nullable(String),

    `delivery_condition` Nullable(String),

    `goods_delivery_point` Nullable(String),

    `svh_certificate` Nullable(String),

    `station_warehouse_name` Nullable(String),

    `warehouse_area` Nullable(String),

    `warehouse_street` Nullable(String),

    `warehouse_city` Nullable(String),

    `goods_description` Nullable(String),

    `origin_country` Nullable(String),

    `container_count` Nullable(Integer),

    `tnved_code` Nullable(String),

    `gross_weight_kg` Nullable(Decimal128(19)),

    `net_weight_kg` Nullable(Decimal128(19)),

    `manufacturer_tin` Nullable(String),

    `holding_founder_company` Nullable(String),

    `goods_comment` Nullable(String),

    `lat_manufacturer` Nullable(Decimal128(19)),

    `long_manufacturer` Nullable(Decimal128(19)),

    `original_file_name` Nullable(String),

    `original_file_parsed_on` Nullable(String)

)
ENGINE = MergeTree()
ORDER BY uuid;
