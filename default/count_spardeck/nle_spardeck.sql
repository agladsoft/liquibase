CREATE OR REPLACE VIEW default.nle_spardeck
AS
SELECT *, count(*) AS count_container
FROM
    (SELECT
        if(terminal = 'НЛЭ', 'NLE', terminal) AS terminal,
        direction,
        ship_name_unified,
        shipment_date,
        month_parsed_on,
        year_parsed_on
    FROM import_enriched
    WHERE terminal = 'NLE'
    UNION ALL
    SELECT
        if(terminal = 'НЛЭ', 'NLE', terminal) AS terminal,
        direction,
        ship_name_unified,
        shipment_date,
        month_parsed_on,
        year_parsed_on
    FROM export_enriched
    WHERE terminal = 'NLE'
    UNION ALL
    SELECT
        terminal,
        direction,
        ship_name_unified AS ship_name_unified,
        shipment_date AS shipment_date,
        month_parsed_on AS month_parsed_on,
        year_parsed_on AS year_parsed_on
    FROM (
        SELECT
            terminal AS terminal,
            direction AS direction,
            ship AS ship_name_unified,
            date AS shipment_date,
            toMonth(shipment_date) AS month_parsed_on,
            toYear(shipment_date) AS year_parsed_on,
            arrayJoin(range(1, count_container + 1))
        FROM default.extrapolate
        )
    )
GROUP BY terminal, direction, ship_name_unified, shipment_date, month_parsed_on, year_parsed_on
