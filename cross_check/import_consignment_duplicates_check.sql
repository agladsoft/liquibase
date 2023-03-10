CREATE OR REPLACE VIEW default.import_consignment_duplicates_check
AS SELECT
    rlcc.year_parsed_on AS year_parsed_on,
    rlcc.month_parsed_on AS month_parsed_on,
    rlcc.ship_name_unified AS ship_name_unified,
    rlcc.direction AS direction,
    rlcc.is_empty AS is_empty,
    rlcc.line AS line,
    rlcc.line_unified AS line_unified,
    rlcc.container_size AS container_size,
    rlcc.container_number AS container_number,
    rlcc.date AS date,
    rlcc.consignment AS consignment,
    count(rlcc.consignment) AS records_count,
    min(rlcc.teu) AS teu,
    rlcc.terminal AS terminal
   FROM (SELECT
    ie.year_parsed_on AS year_parsed_on,
    ie.month_parsed_on AS month_parsed_on,
    ie.ship_name_unified AS ship_name_unified,
    ie.direction AS direction,
    ie.is_empty AS is_empty,
    rlcc.line AS line,
    rlcc.line_unified AS line_unified,
    ie.container_size AS container_size,
    ie.container_number AS container_number,
    ie.date AS date,
    ie.consignment AS consignment,
    ie.consignment AS records_count,
    ie.teu AS teu,
    ie.terminal AS terminal
   FROM default.import_enriched ie
   LEFT JOIN default.reference_lines_cross_check AS rlcc ON ie.line = rlcc.line
   ) AS rlcc
  GROUP BY rlcc.year_parsed_on, rlcc.month_parsed_on, rlcc.ship_name_unified, rlcc.direction, rlcc.is_empty, rlcc.line, rlcc.line_unified, rlcc.container_size, rlcc.container_number, rlcc.date, rlcc.consignment, rlcc.terminal;