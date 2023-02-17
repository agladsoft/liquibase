CREATE OR REPLACE VIEW default.all_enriched
AS SELECT
    'import_main_duplicate_containers' AS view_name,
    import_main_duplicate_containers.direction AS direction,
    import_main_duplicate_containers.consignee AS company,
    import_main_duplicate_containers.consignee_name_unified AS company_unified,
    import_main_duplicate_containers.consignee_inn AS inn,
    import_main_duplicate_containers.goods_name_rus AS goods_name,
    import_main_duplicate_containers.shipper_seaport AS seaport,
    import_main_duplicate_containers.seaport_unified AS seaport_unified,
    import_main_duplicate_containers.country AS country,
    import_main_duplicate_containers.region AS region,
    import_main_duplicate_containers.lat_port AS lat_port,
    import_main_duplicate_containers.long_port AS long_port,
    concat('[[[',
 toString(lat_port),
 ',
',
 toString(long_port),
 '],
[44.7244,
		   37.7675]]]') AS geopolygon,
	concat('[',
 toString(lat_port),
 ',
',
 toString(long_port),
 ']') AS geopoint,
    import_main_duplicate_containers.year_parsed_on AS year,
    import_main_duplicate_containers.month_parsed_on AS month,
    import_main_duplicate_containers.line AS line,
    import_main_duplicate_containers.line_unified AS line_unified,
    import_main_duplicate_containers.container_number AS container_number,
    import_main_duplicate_containers.teu_main AS teu,
    import_main_duplicate_containers.terminal AS terminal,
    import_main_duplicate_containers.goods_tnved AS goods_tnved,
    import_main_duplicate_containers.tnved_group_name AS tnved_group_name,
    import_main_duplicate_containers.container_size AS container_size,
    import_main_duplicate_containers.container_type AS container_type,
    import_main_duplicate_containers.container_type_unified AS container_type_unified
   FROM default.import_main_duplicate_containers
UNION ALL
 SELECT
    'import_nw_enriched' AS view_name,
    import_nw_enriched.direction AS direction,
    import_nw_enriched.consignee_name AS company,
    import_nw_enriched.consignee_name_unified AS company_unified,
    import_nw_enriched.consignee_inn AS inn,
    import_nw_enriched.goods_name AS goods_name,
    import_nw_enriched.seaport AS seaport,
    import_nw_enriched.seaport_unified AS seaport_unified,
    import_nw_enriched.country AS country,
    import_nw_enriched.region AS region,
    import_nw_enriched.lat_port AS lat_port,
    import_nw_enriched.long_port AS long_port,
    concat('[[[',
 toString(lat_port),
 ',
',
 toString(long_port),
 '],
[44.7244,
		   37.7675]]]') AS geopolygon,
	concat('[',
 toString(lat_port),
 ',
',
 toString(long_port),
 ']') AS geopoint,
    import_nw_enriched.year AS year,
    import_nw_enriched.month AS month,
    import_nw_enriched.line AS line,
    import_nw_enriched.line_unified AS line_unified,
    import_nw_enriched.container_number AS container_number,
    import_nw_enriched.teu AS teu,
    import_nw_enriched.terminal AS terminal,
    import_nw_enriched.tnved_group_id AS goods_tnved,
    import_nw_enriched.tnved_group_name AS tnved_group_name,
    import_nw_enriched.container_size AS container_size,
    import_nw_enriched.container_type AS container_type,
    import_nw_enriched.container_type_unified AS container_type_unified
   FROM default.import_nw_enriched
UNION ALL
 SELECT
    'import_vsk_enriched' AS view_name,
    import_vsk_enriched.direction AS direction,
    import_vsk_enriched.consignee_name AS company,
    import_vsk_enriched.consignee_name_unified AS company_unified,
    import_vsk_enriched.consignee_inn AS inn,
    import_vsk_enriched.goods_name AS goods_name,
    import_vsk_enriched.seaport AS seaport,
    import_vsk_enriched.seaport_unified AS seaport_unified,
    import_vsk_enriched.country AS country,
    import_vsk_enriched.region AS region,
    import_vsk_enriched.lat_port AS lat_port,
    import_vsk_enriched.long_port AS long_port,
    concat('[[[',
 toString(lat_port),
 ',
',
 toString(long_port),
 '],
[44.7244,
		   37.7675]]]') AS geopolygon,
	concat('[',
 toString(lat_port),
 ',
',
 toString(long_port),
 ']') AS geopoint,
    import_vsk_enriched.year AS year,
    import_vsk_enriched.month AS month,
    import_vsk_enriched.line AS line,
    import_vsk_enriched.line_unified AS line_unified,
    import_vsk_enriched.container_number AS container_number,
    import_vsk_enriched.teu AS teu,
    import_vsk_enriched.terminal AS terminal,
    import_vsk_enriched.tnved_group_id AS goods_tnved,
    import_vsk_enriched.tnved_group_name AS tnved_group_name,
    import_vsk_enriched.container_size AS container_size,
    import_vsk_enriched.container_type AS container_type,
    import_vsk_enriched.container_type_unified AS container_type_unified
   FROM default.import_vsk_enriched
UNION ALL
 SELECT
    'export_enriched' AS view_name,
    export_enriched.direction AS direction,
    export_enriched.shipper AS company,
    export_enriched.shipper_name_unified AS company_unified,
    export_enriched.shipper_inn AS inn,
    export_enriched.goods_name_rus AS goods_name,
    export_enriched.unload_seaport AS seaport,
    export_enriched.seaport_unified AS seaport_unified,
    export_enriched.country AS country,
    export_enriched.region AS region,
    export_enriched.lat_port AS lat_port,
    export_enriched.long_port AS long_port,
    concat('[[[',
 toString(lat_port),
 ',
',
 toString(long_port),
 '],
[44.7244,
		   37.7675]]]') AS geopolygon,
	concat('[',
 toString(lat_port),
 ',
',
 toString(long_port),
 ']') AS geopoint,
    export_enriched.year_parsed_on AS year,
    export_enriched.month_parsed_on AS month,
    export_enriched.line AS line,
    export_enriched.line_unified AS line_unified,
    export_enriched.container_number AS container_number,
    export_enriched.teu AS teu,
    export_enriched.terminal AS terminal,
    export_enriched.goods_tnved AS goods_tnved,
    export_enriched.tnved_group_name AS tnved_group_name,
    export_enriched.container_size AS container_size,
    export_enriched.container_type AS container_type,
    export_enriched.container_type_unified AS container_type_unified
   FROM default.export_enriched
UNION ALL
 SELECT
    'export_nw_enriched' AS view_name,
    export_nw_enriched.direction AS direction,
    export_nw_enriched.shipper_name AS company,
    export_nw_enriched.shipper_name_unified AS company_unified,
    export_nw_enriched.shipper_inn AS inn,
    export_nw_enriched.goods_name AS goods_name,
    export_nw_enriched.seaport AS seaport,
    export_nw_enriched.seaport_unified AS seaport_unified,
    export_nw_enriched.country AS country,
    export_nw_enriched.region AS region,
    export_nw_enriched.lat_port AS lat_port,
    export_nw_enriched.long_port AS long_port,
    concat('[[[',
 toString(lat_port),
 ',
',
 toString(long_port),
 '],
[44.7244,
		   37.7675]]]') AS geopolygon,
	concat('[',
 toString(lat_port),
 ',
',
 toString(long_port),
 ']') AS geopoint,
    export_nw_enriched.year AS year,
    export_nw_enriched.month AS month,
    export_nw_enriched.line AS line,
    export_nw_enriched.line_unified AS line_unified,
    export_nw_enriched.container_number AS container_number,
    export_nw_enriched.teu AS teu,
    export_nw_enriched.terminal AS terminal,
    export_nw_enriched.tnved_group_id AS goods_tnved,
    export_nw_enriched.tnved_group_name AS tnved_group_name,
    export_nw_enriched.container_size AS container_size,
    export_nw_enriched.container_type AS container_type,
    export_nw_enriched.container_type_unified AS container_type_unified
   FROM default.export_nw_enriched
UNION ALL
 SELECT
    'export_vsk_enriched' AS view_name,
    export_vsk_enriched.direction AS direction,
    export_vsk_enriched.shipper_name AS company,
    export_vsk_enriched.shipper_name_unified AS company_unified,
    export_vsk_enriched.shipper_inn AS inn,
    export_vsk_enriched.goods_name AS goods_name,
    export_vsk_enriched.seaport AS seaport,
    export_vsk_enriched.seaport_unified AS seaport_unified,
    export_vsk_enriched.country AS country,
    export_vsk_enriched.region AS region,
    export_vsk_enriched.lat_port AS lat_port,
    export_vsk_enriched.long_port AS long_port,
    concat('[[[',
 toString(lat_port),
 ',
',
 toString(long_port),
 '],
[44.7244,
		   37.7675]]]') AS geopolygon,
	concat('[',
 toString(lat_port),
 ',
',
 toString(long_port),
 ']') AS geopoint,
    export_vsk_enriched.year AS year,
    export_vsk_enriched.month AS month,
    export_vsk_enriched.line AS line,
    export_vsk_enriched.line_unified AS line_unified,
    export_vsk_enriched.container_number AS container_number,
    export_vsk_enriched.teu AS teu,
    export_vsk_enriched.terminal AS terminal,
    export_vsk_enriched.tnved_group_id AS goods_tnved,
    export_vsk_enriched.tnved_group_name AS tnved_group_name,
    export_vsk_enriched.container_size AS container_size,
    export_vsk_enriched.container_type AS container_type,
    export_vsk_enriched.container_type_unified AS container_type_unified
   FROM default.export_vsk_enriched