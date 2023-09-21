CREATE OR REPLACE VIEW default.import_enriched
AS SELECT
    import.uuid AS uuid,
    import.month_parsed_on AS month_parsed_on,
    import.year_parsed_on AS year_parsed_on,
    'import' AS direction,
    import.terminal AS terminal,
    import.line AS line,
    rl.line_unified AS line_unified,
    import.ship_name AS ship_name,
    rs.ship_name_unified AS ship_name_unified,
    import.voyage AS voyage,
    import.shipment_date AS shipment_date,
    import.shipment_month AS shipment_month,
    import.shipment_year AS shipment_year,
    import.consignment AS consignment,
    import.container_number AS container_number,
        CASE
            WHEN import.container_size = 45 THEN 40
            WHEN import.container_size = 22 THEN 20
            ELSE import.container_size
        END AS container_size,
    import.container_type AS container_type,
    rct.container_type_unified AS container_type_unified,
    import.teu AS teu,
    import.container_count AS container_count,
        CASE
            WHEN re.is_empty = import.goods_name and
            (goods_weight_with_package = 0 or goods_weight_with_package is null) THEN true
            ELSE false
        END AS is_empty,
    import.goods_name AS goods_name,
    import.tnved AS tnved,
    rt.group_tnved AS tnved_group_id,
    rt.goods_name AS tnved_group_name,
    import.goods_weight_with_package AS goods_weight_with_package,
    import.shipper_name AS shipper_name,
    import.consignee_name AS consignee_name,
    ri.company_inn AS consignee_inn,
    ri.company_name_unified AS consignee_name_unified,
    import.expeditor AS expeditor,
    if(empty_containers.seaport_unified is null, rg.seaport_unified, empty_containers.seaport_unified) AS tracking_seaport_unified,
    if(empty_containers.country is null, rg.country, empty_containers.country) AS tracking_country_unified,
    if(empty_containers.region is null, rg.region, empty_containers.region) AS region,
    rgeo.lat_port AS lat_port,
    rgeo.long_port AS long_port
   FROM default.import
     LEFT JOIN (SELECT * FROM default.reference_inn FINAL) AS ri ON import.consignee_name = ri.company_name
     LEFT JOIN (SELECT * FROM default.reference_is_empty FINAL) AS re ON import.goods_name = re.is_empty
     LEFT JOIN (SELECT * FROM default.reference_lines FINAL) AS rl ON import.line = rl.line
     LEFT JOIN (SELECT * FROM default.reference_ship FINAL) AS rs ON import.ship_name = rs.ship_name
     LEFT JOIN (SELECT * FROM default.reference_container_type FINAL) AS rct ON import.container_type = rct.container_type
     LEFT JOIN default.import_empty_containers_and_region AS empty_containers ON empty_containers.uuid = import.uuid
     LEFT JOIN (SELECT * FROM default.reference_region FINAL) AS rg ON import.tracking_seaport = rg.seaport
     LEFT JOIN (SELECT * FROM default.reference_tnved2_actual) AS rt ON import.tnved = rt.group_tnved
     LEFT JOIN (SELECT * FROM default.reference_geo FINAL) AS rgeo ON tracking_country_unified = rgeo.seaport;
