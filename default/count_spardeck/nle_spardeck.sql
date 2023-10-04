CREATE OR REPLACE VIEW default.nle_spardeck
AS
SELECT *, count(*) AS count_container
FROM
    (SELECT
        ship_name_unified,
        shipment_date,
        month_parsed_on,
        year_parsed_on
    FROM import_enriched
    WHERE terminal = 'НЛЭ'
    UNION ALL
    SELECT
        ship_name_unified,
        shipment_date,
        month_parsed_on,
        year_parsed_on
    FROM export_enriched
    WHERE terminal = 'НЛЭ'
    UNION ALL
    SELECT
        ship_name_unified AS ship_name_unified,
        shipment_date AS shipment_date,
        month_parsed_on AS month_parsed_on,
        year_parsed_on AS year_parsed_on
    FROM (
        SELECT
            ship AS ship_name_unified,
            date AS shipment_date,
            toMonth(shipment_date) AS month_parsed_on,
            toYear(shipment_date) AS year_parsed_on,
            arrayJoin(range(1, count_container + 1))
        FROM default.extrapolate
        )
    )
GROUP BY ship_name_unified, shipment_date, month_parsed_on, year_parsed_on
