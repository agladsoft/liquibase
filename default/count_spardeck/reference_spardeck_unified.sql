CREATE OR REPLACE VIEW default.reference_spardeck_unified
AS SELECT operator, rl.line_unified AS line_unified, vessel, rs.ship_name_unified AS ship_name_unified, stividor, atb_moor_pier, month, year,
toUInt64OrZero(total_volume_in) - if(volume_in_nutep is null, 0, toUInt64(volume_in_nutep)) as total_volume_in,
toUInt64OrZero(total_volume_out) - if(volume_out_nutep is null, 0, toUInt64(volume_out_nutep)) as total_volume_out
FROM reference_spardeck
LEFT JOIN (SELECT * FROM default.reference_ship FINAL) AS rs ON vessel = rs.ship_name
LEFT JOIN (SELECT * FROM default.reference_lines FINAL) AS rl ON operator = rl.line
GROUP BY operator, rl.line_unified, vessel, rs.ship_name_unified, stividor, atb_moor_pier, toMonth(atb_moor_pier) AS month, toYear(atb_moor_pier) AS year, total_volume_in, total_volume_out
ORDER BY operator