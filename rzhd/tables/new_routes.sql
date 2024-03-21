CREATE TABLE IF NOT EXISTS rzhd.new_route
(
    `uuid` DEFAULT generateUUIDv4(),

    `type_of_transportation` Nullable(String),

    `text_route_number` Nullable(String),

    `text_route_number_count` Nullable(Int32),

    `route_min_date` Nullable(Date32),

    `route_month` Nullable(Int32),

    `route_year` Nullable(Int32),

    `departure_station_code_of_rf` Nullable(String),

    `departure_station_of_the_rf` Nullable(String),

    `departure_region` Nullable(String),

    `destination_station_code_of_rf` Nullable(String),

    `rf_destination_station` Nullable(String),

    `destination_region` Nullable(String),

    `payer_of_the_railway_tariff_unified` Nullable(String),

    `shipper_okpo` Nullable(String),

    `shipper_by_puzt` Nullable(String),

    `consignee_okpo` Nullable(String),

    `consignee_by_puzt` Nullable(String),

    `teu` Nullable(Int32),

    `old_text_route_number` Nullable(String),

    `changed_field` Nullable(String),

    `old_value_field` Nullable(String),

    `category_route` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid