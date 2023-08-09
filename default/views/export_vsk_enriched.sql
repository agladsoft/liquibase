CREATE OR REPLACE VIEW default.export_vsk_enriched
AS SELECT
    export_vsk.month AS month,
    export_vsk.year AS year,
    export_vsk.direction AS direction,
    export_vsk.terminal AS terminal,
    rl.line_unified AS line_unified,
    rs.ship_name_unified AS ship_name_unified,
    export_vsk.voyage AS voyage,
    export_vsk.shipment_date AS shipment_date,
    export_vsk.container_number AS container_number,
    export_vsk.container_size AS container_size,
    rct.container_type_unified AS container_type_unified,
    export_vsk.teu AS teu,
    export_vsk.container_count AS container_count,
    export_vsk.is_empty AS is_empty,
    export_vsk.goods_name AS goods_name,
    export_vsk.tnved AS tnved,
    export_vsk.tnved_group_id AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    export_vsk.goods_weight_with_package AS goods_weight_with_package,
    export_vsk.shipper_name AS shipper_name,
    ri.company_inn AS shipper_inn,
    ri.company_name_unified AS shipper_name_unified,
    export_vsk.consignee_name AS consignee_name,
    export_vsk.shipper_country AS shipper_country,
    export_vsk.expeditor AS expeditor,
    rg.country AS tracking_country_unified,
    rg.seaport_unified AS tracking_seaport_unified,
    rg.region AS region,
    rgeo.lat_port AS lat_port,
    rgeo.long_port AS long_port
   FROM default.export_vsk
     LEFT JOIN (SELECT * FROM default.reference_tnved2_actual) rt ON export_vsk.tnved_group_id = rt.group_tnved
     LEFT JOIN (SELECT * FROM default.reference_inn) ri ON export_vsk.shipper_name = ri.company_name
     LEFT JOIN (SELECT * FROM default.reference_region FINAL) rg ON export_vsk.tracking_seaport = rg.seaport
     LEFT JOIN (SELECT * FROM default.reference_lines FINAL) rl ON export_vsk.line = rl.line
     LEFT JOIN (SELECT * FROM default.reference_ship FINAL) AS rs ON export_vsk.ship_name = rs.ship_name
     LEFT JOIN (SELECT * FROM default.reference_container_type FINAL) rct ON export_vsk.container_type = rct.container_type
     LEFT JOIN (SELECT * FROM default.reference_geo FINAL) rgeo ON export_vsk.tracking_seaport = rgeo.seaport;
