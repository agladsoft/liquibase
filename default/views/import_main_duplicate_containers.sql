CREATE OR REPLACE VIEW default.import_main_duplicate_containers
AS SELECT *
FROM
	(SELECT month_parsed_on, year_parsed_on, shipment_month, shipment_year, terminal, line_unified, ship_name_unified, voyage, shipment_date, consignment, direction, container_number, container_size, container_type_unified, teu_main, count_main, is_empty, goods_name, tnved, tnved_group_name, goods_weight_netto goods_weight_brutto, shipper_name, consignee_name, consignee_inn, consignee_name_unified, city, tracking_country_unified, tracking_seaport_unified, region, lat_port, long_port,
	ROW_NUMBER() OVER (PARTITION BY container_number, shipment_date, ship_name_unified, consignment) AS rows_number
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