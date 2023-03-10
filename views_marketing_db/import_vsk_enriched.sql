CREATE OR REPLACE VIEW default.import_vsk_enriched
AS SELECT
    import_vsk.import_vsk_id AS import_vsk_id,
    import_vsk.year AS year,
    import_vsk.month AS month,
    import_vsk.period AS period,
    import_vsk.line AS line,
    rl.line_unified AS line_unified,
    import_vsk.shipper_name AS shipper_name,
    import_vsk.expeditor AS expeditor,
    import_vsk.goods_name AS goods_name,
    import_vsk.container_type AS container_type,
    rct.container_type_unified AS container_type_unified,
    import_vsk.container_size AS container_size,
    import_vsk.container_count AS container_count,
    import_vsk.terminal AS terminal,
    'import' AS direction,
    import_vsk.teu AS teu,
    import_vsk.container_number AS container_number,
    import_vsk.tnved AS tnved,
    import_vsk.shipper_country AS shipper_country,
    import_vsk.departure_type AS departure_type,
    import_vsk.consignment AS consignment,
    import_vsk.ship_name AS ship_name,
    import_vsk.voyage AS voyage,
    import_vsk.park_type AS park_type,
    import_vsk.agent AS agent,
    import_vsk.station_ukp AS station_ukp,
    import_vsk.combined_cargo AS combined_cargo,
    import_vsk.destination_station AS destination_station,
    import_vsk.goods_weight_netto AS goods_weight_netto,
    import_vsk.goods_weight_brutto AS goods_weight_brutto,
    import_vsk.tnved_group_id AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    ri.company_inn AS consignee_inn,
    import_vsk.consignee_name AS consignee_name,
    ri.company_name_unified AS consignee_name_unified,
    import_vsk.departure_port AS seaport,
    rg.seaport_unified AS seaport_unified,
    rg.country AS country,
    rg.region AS region,
    rgeo.lat_port AS lat_port,
    rgeo.long_port AS long_port
   FROM marketing_db.import_vsk
     LEFT JOIN default.reference_tnved2_actual rt ON import_vsk.tnved_group_id = rt.group_tnved
     LEFT JOIN marketing_db.reference_inn ri ON import_vsk.consignee_name = ri.company_name
     LEFT JOIN marketing_db.reference_region rg ON import_vsk.departure_port = rg.seaport
     LEFT JOIN marketing_db.reference_lines rl ON import_vsk.line = rl.line
     LEFT JOIN marketing_db.reference_container_type rct ON import_vsk.container_type = rct.container_type
     LEFT JOIN marketing_db.reference_geo rgeo ON import_vsk.departure_port = rgeo.seaport;
