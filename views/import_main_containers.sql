CREATE OR REPLACE VIEW default.import_main_containers
AS SELECT import_id, ship_name, ship_name_unified, direction, is_empty, date, terminal, container_number, count_dupl_cont_num, container_size, container_type, container_type_unified, goods_name_rus, consignment, min_consignment,
count, count_main, teu,
CASE
	WHEN count_main = '0' THEN 0
	ELSE teu
END AS teu_main,
voyage, shipper_country, goods_weight, package_number, city, shipper_seaport, year, month, goods_tnved, parsed_on, year_parsed_on, month_parsed_on, consignee, consignee_inn, consignee_name_unified, seaport, seaport_unified, country, region, tnved_group_name, lat_port, long_port
FROM (SELECT import_id, ship_name, ship_name_unified, direction, is_empty, date, terminal, container_number, count_dupl_cont_num, container_size, container_type, container_type_unified, goods_name_rus, consignment, min_consignment, count, '1' AS count_main, teu, voyage, shipper_country, goods_weight, package_number, city, shipper_seaport, year, month, goods_tnved, parsed_on, year_parsed_on, month_parsed_on, consignee, consignee_inn, consignee_name_unified, seaport, seaport_unified, country, region, tnved_group_name, lat_port, long_port
FROM (
  SELECT import_id, ship_name, ship_name_unified, direction, is_empty, date, terminal, container_number, count_dupl_cont_num, container_size, container_type, container_type_unified, goods_name_rus, consignment, count, teu, voyage, shipper_country, goods_weight, package_number, city, shipper_seaport, year, month, goods_tnved, parsed_on, year_parsed_on, month_parsed_on, consignee, consignee_inn, consignee_name_unified, seaport, seaport_unified, country, region, tnved_group_name, lat_port, long_port,
  MIN(consignment) OVER (PARTITION BY container_number, date, ship_name) AS min_consignment
  FROM (
	SELECT import_id, ship_name, ship_name_unified, direction, is_empty, date, terminal, container_number, count_dupl_cont_num, container_size, container_type, container_type_unified, goods_name_rus, consignment, count, teu, voyage, shipper_country, goods_weight, package_number, city, shipper_seaport, year, month, goods_tnved, parsed_on, year_parsed_on, month_parsed_on, consignee, consignee_inn, consignee_name_unified, seaport, seaport_unified, country, region, tnved_group_name, lat_port, long_port
	FROM (
		SELECT import_id, ship_name, ship_name_unified, direction, is_empty, date, terminal, container_number, container_size, container_type, container_type_unified, goods_name_rus, consignment, count, teu, voyage, shipper_country, goods_weight, package_number, city, shipper_seaport, year, month, goods_tnved, parsed_on, year_parsed_on, month_parsed_on, consignee, consignee_inn, consignee_name_unified, seaport, seaport_unified, country, region, tnved_group_name, lat_port, long_port,
		COUNT(*) OVER (PARTITION BY container_number, date, ship_name) AS count_dupl_cont_num
		FROM import_enriched) AS t
	  WHERE t.count_dupl_cont_num > 1
  ) AS t2
) AS t3
WHERE t3.consignment = t3.min_consignment) AS t4