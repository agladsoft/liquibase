CREATE OR REPLACE VIEW default.import_vsk_enriched
AS SELECT
    import_vsk.period AS period,
    import_vsk.month AS month,
    import_vsk.year AS year,
    'import' AS direction,
    import_vsk.terminal AS terminal,
    rl.line_unified AS line_unified,
    rs.ship_name_unified AS ship_name_unified,
    import_vsk.voyage AS voyage,
    import_vsk.shipment_date AS shipment_date,
    import_vsk.container_number AS container_number,
    import_vsk.container_size AS container_size,
    rct.container_type_unified AS container_type_unified,
    import_vsk.teu AS teu,
    import_vsk.container_count AS container_count,
    import_vsk.is_empty AS is_empty,
    import_vsk.goods_name AS goods_name,
    import_vsk.tnved AS tnved,
    import_vsk.tnved_group_id AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    import_vsk.goods_weight_netto AS goods_weight_netto,
    import_vsk.goods_weight_brutto AS goods_weight_brutto,
    import_vsk.shipper_name AS shipper_name,
    import_vsk.consignee_name AS consignee_name,
    ri.company_inn AS consignee_inn,
    ri.company_name_unified AS consignee_name_unified,
    import_vsk.consignee_country AS consignee_country,
    import_vsk.expeditor AS expeditor,
    rg.country AS tracking_country_unified,
    rg.seaport_unified AS tracking_seaport_unified,
    rg.region AS region,
    rgeo.lat_port AS lat_port,
    rgeo.long_port AS long_port,
    import_vsk.agent AS agent,
    import_vsk.departure_type AS departure_type,
    import_vsk.destination_station AS destination_station,
    import_vsk.station_ukp AS station_ukp,
    import_vsk.combined_cargo AS combined_cargo
   FROM default.import_vsk
     LEFT JOIN default.reference_tnved2_actual rt ON import_vsk.tnved_group_id = rt.group_tnved
     LEFT JOIN default.reference_inn ri ON import_vsk.consignee_name = ri.company_name
     LEFT JOIN default.reference_region rg ON import_vsk.tracking_seaport = rg.seaport
     LEFT JOIN default.reference_lines rl ON import_vsk.line = rl.line
     LEFT JOIN default.reference_ship AS rs ON import_vsk.ship_name = rs.ship_name
     LEFT JOIN default.reference_container_type rct ON import_vsk.container_type = rct.container_type
     LEFT JOIN default.reference_geo rgeo ON import_vsk.tracking_seaport = rgeo.seaport;
