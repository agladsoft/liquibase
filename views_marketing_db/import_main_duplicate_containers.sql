CREATE OR REPLACE VIEW default.import_main_duplicate_containers
AS SELECT *
FROM
	(SELECT direction, terminal, ship_name, ship_name_unified, container_number, container_size, container_type, container_type_unified, consignment, goods_name_rus, is_empty, line, line_unified, teu_main, shipper_seaport, goods_tnved, date, year_parsed_on, month_parsed_on, consignee, consignee_inn, consignee_name_unified, seaport_unified, country, region, tnved_group_name, lat_port, long_port, original_file_name, original_file_parsed_on,
	ROW_NUMBER() OVER (PARTITION BY container_number, date, ship_name, consignment) AS rows_number
	FROM
		(SELECT *
	   	FROM default.import_main_containers
		UNION ALL
		SELECT *
		FROM default.import_duplicate_containers
		UNION ALL
		SELECT *
		FROM default.import_containers
		) AS query1
	)
WHERE rows_number = 1