CREATE OR REPLACE VIEW default.import_final
AS SELECT
    ie.shipment_date AS shipment_date,
    ie.year_parsed_on AS year_parsed_on,
    ie.month_parsed_on AS month_parsed_on,
    ie.container_count AS container_count,
    ie.container_type_unified AS container_type_unified,
    ie.container_number AS container_number,
    ie.container_size AS container_size,
    ie.teu AS teu,
    ie.goods_name AS goods_name,
    ie.ship_name_unified AS ship_name_unified,
    ie.shipper_name AS shipper_name,
    ie.consignee_name AS consignee_name,
    ie.line_unified AS line_unified,
    ie.consignment AS consignment,
    ie.terminal AS terminal,
    ie.tnved AS tnved,
    ie.tracking_seaport_unified AS tracking_seaport_unified,
    ie.tracking_country_unified AS tracking_country_unified
   FROM default.import_enriched ie;
