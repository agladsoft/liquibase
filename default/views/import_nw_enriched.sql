CREATE OR REPLACE VIEW default.import_nw_enriched
AS SELECT
    import_nw.period AS period,
    import_nw.month AS month,
    import_nw.year AS year,
    'import' AS direction,
    import_nw.terminal AS terminal,
    rl.line_unified AS line_unified,
    rs.ship_name_unified AS ship_name_unified,
    import_nw.voyage AS voyage,
    import_nw.shipment_date AS shipment_date,
    import_nw.container_number AS container_number,
    import_nw.container_size AS container_size,
    rct.container_type_unified AS container_type_unified,
    import_nw.teu AS teu,
    import_nw.container_count AS container_count,
    import_vsk.is_empty AS is_empty,
    import_nw.goods_name AS goods_name,
    import_nw.tnved AS tnved,
    import_nw.tnved_group_id AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    import_nw.goods_weight_netto AS goods_weight_netto,
    import_nw.shipper_name AS shipper_name,
    import_nw.consignee_name AS consignee_name,
    ri.company_inn AS consignee_inn,
    ri.company_name_unified AS consignee_name_unified,
    import_nw.consignee_country AS consignee_country,
    import_nw.expeditor AS expeditor,
    rg.country AS tracking_country_unified,
    rg.seaport_unified AS tracking_seaport_unified,
    rg.region AS region,
    rgeo.lat_port AS lat_port,
    rgeo.long_port AS long_port
   FROM default.import_nw
     LEFT JOIN default.reference_tnved2_actual rt ON import_nw.tnved_group_id = rt.group_tnved
     LEFT JOIN default.reference_inn ri ON import_nw.consignee_name = ri.company_name
     LEFT JOIN default.reference_region rg ON import_nw.tracking_seaport = rg.seaport
     LEFT JOIN default.reference_lines rl ON import_nw.line = rl.line
     LEFT JOIN default.reference_ship AS rs ON import_nw.ship_name = rs.ship_name
     LEFT JOIN default.reference_container_type rct ON import_nw.container_type = rct.container_type
     LEFT JOIN default.reference_geo rgeo ON import_nw.tracking_seaport = rgeo.seaport;
