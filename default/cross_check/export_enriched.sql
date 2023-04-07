CREATE OR REPLACE VIEW default.export_enriched
AS SELECT
    export.period AS period,
    export.parsed_on AS parsed_on,
    export.month_parsed_on AS month_parsed_on,
    export.year_parsed_on AS year_parsed_on,
    'export' AS direction,
    export.terminal AS terminal,
    rl.line_unified AS line_unified,
    rs.ship_name_unified AS ship_name_unified,
    export.voyage AS voyage,
    export.container_number AS container_number,
        CASE
            WHEN export.container_size = 45 THEN 40
            WHEN export.container_size = 22 THEN 20
            ELSE export.container_size
        END AS container_size,
    rct.container_type_unified AS container_type_unified,
    export.teu AS teu,
    export.container_count AS container_count,
        CASE
            WHEN re.is_empty = export.goods_name_rus THEN true
            ELSE false
        END AS is_empty,
    export.goods_name AS goods_name,
    export.tnved AS tnved,
    rt.group_tnved AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    export.goods_weight_netto AS goods_weight_netto,
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
     LEFT JOIN default.reference_inn ri ON export.shipper_name = ri.company_name
     LEFT JOIN default.reference_is_empty re ON export.goods_name = re.is_empty
     LEFT JOIN default.reference_lines rl ON export.line = rl.line
     LEFT JOIN default.reference_ship rs ON export.ship_name = rs.ship_name
     LEFT JOIN default.reference_container_type rct ON export.container_type = rct.container_type
     LEFT JOIN default.reference_region rg ON export.tracking_seaport = rg.seaport
     LEFT JOIN default.reference_tnved2_actual rt ON export.goods_tnved = rt.group_tnved
     LEFT JOIN default.reference_geo rgeo ON export.tracking_seaport = rgeo.seaport;
