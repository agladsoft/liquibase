CREATE OR REPLACE VIEW default.import_nle_spardeck
AS SELECT line_unified, ship_name_unified, shipment_date, month_parsed_on, year_parsed_on, count(*) AS count_container
FROM import_enriched
WHERE terminal = 'НЛЭ' AND month_parsed_on = 6 AND year_parsed_on = 2023
GROUP BY line_unified, ship_name_unified, shipment_date, month_parsed_on, year_parsed_on
ORDER BY line_unified