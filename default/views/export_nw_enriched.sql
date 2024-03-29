CREATE OR REPLACE VIEW default.export_nw_enriched
AS SELECT
    export_nw.month AS month,
    export_nw.year AS year,
    export_nw.direction AS direction,
    export_nw.terminal AS terminal,
    rl.line_unified AS line_unified,
    rs.ship_name_unified AS ship_name_unified,
    export_nw.voyage AS voyage,
    export_nw.shipment_date AS shipment_date,
    export_nw.container_number AS container_number,
    export_nw.container_size AS container_size,
    rct.container_type_unified AS container_type_unified,
    export_nw.teu AS teu,
    export_nw.container_count AS container_count,
    export_nw.is_empty AS is_empty,
    export_nw.goods_name AS goods_name,
    export_nw.tnved AS tnved,
    export_nw.tnved_group_id AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    export_nw.goods_weight_with_package AS goods_weight_with_package,
    export_nw.shipper_name AS shipper_name,
    ri.company_inn AS shipper_inn,
    ri.company_name_unified AS shipper_name_unified,
    export_nw.consignee_name AS consignee_name,
    export_nw.shipper_country AS shipper_country,
    export_nw.expeditor AS expeditor,
    rg.country AS tracking_country_unified,
    rg.seaport_unified AS tracking_seaport_unified,
    rg.region AS region,
    rgeo.lat_port AS lat_port,
    rgeo.long_port AS long_port
   FROM default.export_nw
     LEFT JOIN (SELECT * FROM default.reference_tnved2_actual) rt ON export_nw.tnved_group_id = rt.group_tnved
     LEFT JOIN (SELECT * FROM default.reference_inn FINAL) ri ON export_nw.shipper_name = ri.company_name
     LEFT JOIN (SELECT * FROM default.reference_region FINAL) rg ON export_nw.tracking_seaport = rg.seaport
     LEFT JOIN (SELECT * FROM default.reference_lines FINAL) rl ON export_nw.line = rl.line
     LEFT JOIN (SELECT * FROM default.reference_ship FINAL) AS rs ON export_nw.ship_name = rs.ship_name
     LEFT JOIN (SELECT * FROM default.reference_container_type FINAL) rct ON export_nw.container_type = rct.container_type
     LEFT JOIN (SELECT * FROM default.reference_geo FINAL) rgeo ON export_nw.tracking_seaport = rgeo.seaport;
