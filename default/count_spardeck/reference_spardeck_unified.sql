CREATE OR REPLACE VIEW default.reference_spardeck_unified
AS SELECT operator, vessel, rs.ship_name_unified, atb_moor_pier, month, year, total_volume_in
FROM reference_spardeck
LEFT JOIN (SELECT * FROM default.reference_ship FINAL) AS rs ON vessel = rs.ship_name
WHERE toMonth(atb_moor_pier) = 5 AND toYear(atb_moor_pier) = 2023
GROUP BY operator, rs.ship_name_unified, vessel, atb_moor_pier, toMonth(atb_moor_pier) AS month, toYear(atb_moor_pier) AS year, total_volume_in
ORDER BY operator