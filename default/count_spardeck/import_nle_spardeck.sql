CREATE OR REPLACE VIEW default.import_nle_spardeck
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
        ship AS ship_name_unified,
        date AS shipment_date,
        toMonth(shipment_date) AS month_parsed_on,
        toYear(shipment_date) AS year_parsed_on
    FROM (
         SELECT *, 1 as count_container_custom
         FROM default.extrapolate
         WHERE count_container > arrayJoin(range(0, 5000)))
         )
GROUP BY ship_name_unified, shipment_date, month_parsed_on, year_parsed_on
