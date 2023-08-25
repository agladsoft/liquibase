CREATE OR REPLACE VIEW default.reference_spardeck_unified
AS SELECT operator, rl.line_unified AS line_unified, vessel, rs.ship_name_unified AS ship_name_unified, atb_moor_pier, month, year, total_volume_in
FROM reference_spardeck
LEFT JOIN (SELECT * FROM default.reference_ship FINAL) AS rs ON vessel = rs.ship_name
LEFT JOIN (SELECT * FROM default.reference_lines FINAL) AS rl ON operator = rl.line
WHERE toMonth(atb_moor_pier) = 5 AND toYear(atb_moor_pier) = 2023
GROUP BY operator, rl.line_unified, vessel, rs.ship_name_unified, atb_moor_pier, toMonth(atb_moor_pier) AS month, toYear(atb_moor_pier) AS year, total_volume_in
ORDER BY operator