CREATE OR REPLACE VIEW default.statistics_enriched
AS SELECT DISTINCT statistics.year AS year,
    statistics.month AS month,
    statistics.ship_name AS ship_name,
    rs.ship_name_unified AS ship_name_unified,
    statistics.direction AS direction,
    statistics.is_empty AS is_empty,
    rl.line_unified AS line_unified,
    statistics.container_size AS container_size,
    statistics.count AS count,
    statistics.teu AS teu,
    statistics.line AS line,
    statistics.date_arrive AS date_arrive,
    statistics.date_leave AS date_leave
   FROM default.statistics
     LEFT JOIN (SELECT * FROM default.reference_lines FINAL) rl ON statistics.line = rl.line
     LEFT JOIN (SELECT * FROM default.reference_ship FINAL) rs ON statistics.ship_name = rs.ship_name;
