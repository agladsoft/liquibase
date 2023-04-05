CREATE OR REPLACE VIEW default.import_enriched
AS SELECT
    import.month_parsed_on AS month_parsed_on,
    import.year_parsed_on AS year_parsed_on,
    import.shipment_month AS shipment_month,
    import.shipment_year AS shipment_year,
    import.terminal AS terminal,
    rl.line_unified AS line_unified,
    rs.ship_name_unified AS ship_name_unified,
    import.voyage AS voyage,
    import.shipment_date AS shipment_date,
    import.consignment AS consignment,
    import.container_number AS container_number,
    'import' AS direction,
        CASE
            WHEN import.container_size = 45 THEN 40
            WHEN import.container_size = 22 THEN 20
            ELSE import.container_size
        END AS container_size,
    rct.container_type_unified AS container_type_unified,
    import.teu AS teu,
    import.count AS count,
        CASE
            WHEN re.is_empty = import.goods_name_rus THEN true
            ELSE false
        END AS is_empty,
    import.goods_name AS goods_name,
    import.tnved AS tnved,
    rt.group_tnved AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    import.goods_weight_netto AS goods_weight_netto,
    import.goods_weight_brutto AS goods_weight_brutto,
    import.shipper_name AS shipper_name,
    import.consignee_name AS consignee_name,
    ri.company_inn AS consignee_inn,
    ri.company_name_unified AS consignee_name_unified,
    import.city AS city,
    rg.country AS tracking_country_unified,
    rg.seaport_unified AS tracking_seaport_unified,
    rg.region AS region,
    rgeo.lat_port AS lat_port,
    rgeo.long_port AS long_port
   FROM default.import
     LEFT JOIN default.reference_inn AS ri ON import.consignee = ri.company_name
     LEFT JOIN default.reference_is_empty AS re ON import.goods_name_rus = re.is_empty
     LEFT JOIN default.reference_lines AS rl ON import.line = rl.line
     LEFT JOIN default.reference_ship AS rs ON import.ship = rs.ship_name
     LEFT JOIN default.reference_container_type AS rct ON import.container_type = rct.container_type
     LEFT JOIN default.reference_region AS rg ON import.shipper_seaport = rg.seaport
     LEFT JOIN default.reference_tnved2_actual AS rt ON import.goods_tnved = rt.group_tnved
     LEFT JOIN default.reference_geo AS rgeo ON import.shipper_seaport = rgeo.seaport;
