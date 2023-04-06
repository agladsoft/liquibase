CREATE OR REPLACE VIEW default.import_duplicate_containers
AS SELECT month_parsed_on, year_parsed_on, shipment_month, shipment_year, terminal, line_unified, ship_name_unified, voyage, shipment_date, consignment, min_consignment, direction, container_number, count_dupl_cont_num, container_size, container_type_unified, teu,
CASE
	WHEN count_main = 0 THEN 0
	ELSE teu
END AS teu_main,
count, count_main, is_empty, goods_name, tnved, tnved_group_name, goods_weight_netto goods_weight_brutto, shipper_name, consignee_name, consignee_inn, consignee_name_unified, city, tracking_country_unified, tracking_seaport_unified, region, lat_port, long_port
FROM (SELECT month_parsed_on, year_parsed_on, shipment_month, shipment_year, terminal, line_unified, ship_name_unified, voyage, shipment_date, consignment, min_consignment, direction, container_number, count_dupl_cont_num, container_size, container_type_unified, teu, count, 0 AS count_main, is_empty, goods_name, tnved, tnved_group_name, goods_weight_netto goods_weight_brutto, shipper_name, consignee_name, consignee_inn, consignee_name_unified, city, tracking_country_unified, tracking_seaport_unified, region, lat_port, long_port
FROM (
  SELECT month_parsed_on, year_parsed_on, shipment_month, shipment_year, terminal, line_unified, ship_name_unified, voyage, shipment_date, consignment, direction, container_number, count_dupl_cont_num, container_size, container_type_unified, teu, count, is_empty, goods_name, tnved, tnved_group_name, goods_weight_netto goods_weight_brutto, shipper_name, consignee_name, consignee_inn, consignee_name_unified, city, tracking_country_unified, tracking_seaport_unified, region, lat_port, long_port,
  MIN(consignment) OVER (PARTITION BY container_number, shipment_date, ship_name) AS min_consignment
  FROM (
	SELECT month_parsed_on, year_parsed_on, shipment_month, shipment_year, terminal, line_unified, ship_name_unified, voyage, shipment_date, consignment, direction, container_number, count_dupl_cont_num, container_size, container_type_unified, teu, count, is_empty, goods_name, tnved, tnved_group_name, goods_weight_netto goods_weight_brutto, shipper_name, consignee_name, consignee_inn, consignee_name_unified, city, tracking_country_unified, tracking_seaport_unified, region, lat_port, long_port
	FROM (
		SELECT month_parsed_on, year_parsed_on, shipment_month, shipment_year, terminal, line_unified, ship_name_unified, voyage, shipment_date, consignment, direction, container_number, container_size, container_type_unified, teu, count, is_empty, goods_name, tnved, tnved_group_name, goods_weight_netto goods_weight_brutto, shipper_name, consignee_name, consignee_inn, consignee_name_unified, city, tracking_country_unified, tracking_seaport_unified, region, lat_port, long_port,
		COUNT(*) OVER (PARTITION BY container_number, shipment_date, ship_name) AS count_dupl_cont_num
		FROM default.import_enriched) AS t
	  WHERE t.count_dupl_cont_num > 1
  ) AS t2
) AS t3
WHERE t3.consignment = t3.min_consignment) AS t4