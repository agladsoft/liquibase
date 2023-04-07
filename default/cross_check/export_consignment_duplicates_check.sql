CREATE OR REPLACE VIEW default.export_consignment_duplicates_check
AS SELECT
    rlcc.year_parsed_on AS year_parsed_on,
    rlcc.month_parsed_on AS month_parsed_on,
    rlcc.ship_name_unified AS ship_name_unified,
    rlcc.direction AS direction,
    rlcc.is_empty AS is_empty,
    rlcc.line_unified AS line_unified,
    rlcc.container_size AS container_size,
    rlcc.container_number AS container_number,
    rlcc.date AS date,
    rlcc.consignment AS consignment,
    count(rlcc.consignment) AS records_count,
    min(rlcc.teu) AS teu,
    rlcc.terminal AS terminal
   FROM (SELECT
    ee.year_parsed_on AS year_parsed_on,
    ee.month_parsed_on AS month_parsed_on,
    ee.ship_name_unified AS ship_name_unified,
    ee.direction AS direction,
    ee.is_empty AS is_empty,
        CASE
            WHEN rlcc.line_unified is not null THEN rlcc.line_unified
            ELSE ee.line_unified
        END AS line_unified,
    ee.container_size AS container_size,
    ee.container_number AS container_number,
    ee.period AS date,
    ee.consignment AS consignment,
    ee.consignment AS records_count,
    ee.teu AS teu,
    ee.terminal AS terminal
   FROM default.export_enriched ee
   LEFT JOIN default.reference_lines_cross_check AS rlcc ON ee.line_unified = rlcc.line
   ) AS rlcc
  GROUP BY rlcc.year_parsed_on, rlcc.month_parsed_on, rlcc.ship_name_unified, rlcc.direction, rlcc.is_empty, rlcc.line_unified, rlcc.container_size, rlcc.container_number, rlcc.date, rlcc.consignment, rlcc.terminal;