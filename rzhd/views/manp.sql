SET optimize_move_to_prewhere=0
SET receive_timeout=900
SET allow_experimental_live_view=1

CREATE LIVE VIEW IF NOT EXISTS rzhd.manp WITH REFRESH 86400
AS SELECT
    departure_date,

    departure_road,

    departure_station_of_the_rf,

    destination_road,

    rf_destination_station,

    common_shipper,

    common_consignee,

    payer_of_the_railway_tariff_unified,

    cargo_group,

    teu,

    departure_month,

    departure_year,

    concat(CAST(departure_month, 'text'), '-', CAST(departure_year, 'text')) AS departure_month_year
FROM rzhd.rzhd_ktk_view
SETTINGS
allow_experimental_live_view = 1