CREATE OR REPLACE VIEW default.export_enriched
AS SELECT
    export.parsed_on AS parsed_on,
    export.month_parsed_on AS month_parsed_on,
    export.year_parsed_on AS year_parsed_on,
    'export' AS direction,
    export.terminal AS terminal,
    export.line AS line,
    rl.line_unified AS line_unified,
    export.ship_name AS ship_name,
    rs.ship_name_unified AS ship_name_unified,
    export.voyage AS voyage,
    export.shipment_date AS shipment_date,
    export.consignment AS consignment,
    export.container_number AS container_number,
        CASE
            WHEN export.container_size = 45 THEN 40
            WHEN export.container_size = 22 THEN 20
            ELSE export.container_size
        END AS container_size,
    export.container_type AS container_type,
    rct.container_type_unified AS container_type_unified,
    export.teu AS teu,
    export.container_count AS container_count,
        CASE
            WHEN re.is_empty = export.goods_name THEN true
            ELSE false
        END AS is_empty,
    export.goods_name AS goods_name,
    export.tnved AS tnved,
    rt.group_tnved AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    export.goods_weight_with_package AS goods_weight_with_package,
    export.shipper_name AS shipper_name,
    ri.company_inn AS shipper_inn,
    ri.company_name_unified AS shipper_name_unified,
    export.consignee_name AS consignee_name,
    export.expeditor AS expeditor,
    rg.country AS tracking_country_unified,
    rg.seaport_unified AS tracking_seaport_unified,
    rg.region AS region,
    rgeo.lat_port AS lat_port,
    rgeo.long_port AS long_port,
    export.gtd_number AS gtd_number
   FROM default.export
     LEFT JOIN (SELECT * FROM default.reference_inn FINAL) ri ON export.shipper_name = ri.company_name
     LEFT JOIN (SELECT * FROM default.reference_is_empty FINAL) re ON export.goods_name = re.is_empty
     LEFT JOIN (SELECT * FROM default.reference_lines FINAL) rl ON export.line = rl.line
     LEFT JOIN (SELECT * FROM default.reference_ship FINAL) rs ON export.ship_name = rs.ship_name
     LEFT JOIN (SELECT * FROM default.reference_container_type FINAL) rct ON export.container_type = rct.container_type
     LEFT JOIN (SELECT * FROM default.reference_region FINAL) rg ON export.tracking_seaport = rg.seaport
     LEFT JOIN (SELECT * FROM default.reference_tnved2_actual) rt ON export.tnved = rt.group_tnved
     LEFT JOIN (SELECT * FROM default.reference_geo FINAL) rgeo ON export.tracking_seaport = rgeo.seaport;
