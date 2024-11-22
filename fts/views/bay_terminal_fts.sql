CREATE LIVE VIEW IF NOT EXISTS fts.bay_terminal_fts WITH REFRESH 86400
AS
SELECT
		warehouse_area,
		warehouse_city,
		warehouse_street,
		multiIf((warehouse_area ilike '%новорос%' or warehouse_area ilike '%краснод%') and (warehouse_street ilike '%Сухум%' or warehouse_street ilike '%НУТЭП%'), 'НУТЭП',
				(warehouse_area ilike '%новорос%' or warehouse_area ilike '%краснод%') and (warehouse_street ilike '% мира%' or warehouse_street ilike '%мира %' or warehouse_street ilike '%НЛЭ%' or
				warehouse_street ilike '%НОВОРОСЛЕСЭКСПОРТ%'), 'НЛЭ',
				(warehouse_area ilike '%новорос%' or warehouse_area ilike '%краснод%') and ((warehouse_street ilike '%портовая%' and warehouse_street ilike '%14%') or warehouse_street ilike '%НМТП%'),
				'НМТП',
				(warehouse_city ilike '%петербург%' or warehouse_city ilike '%спб%') and ((warehouse_street ilike '%межевой%' and warehouse_street ilike '%5%') or warehouse_street ilike '%ПКТ%' or
				(warehouse_street ilike '%первый%' and warehouse_street ilike '%конт%')), 'ПКТ',
				(warehouse_city ilike '%петербург%' or warehouse_city ilike '%спб%') and (warehouse_street ilike '%гладкий%' or warehouse_street ilike '%ПЕТРОЛЕСПОРТ%'
				or warehouse_street ilike '%плп%' or warehouse_street ilike '%лесной%'),  'ПЛП',
				warehouse_area ilike '%ленинград%' and warehouse_street ILIKE '%усть-лу%', 'УЛКТ',
				(warehouse_city ilike '%петербург%' or warehouse_city ilike '%спб%') and ((warehouse_street ilike '%угольн%' and warehouse_street ilike '%гавань%' and warehouse_street ilike '%элеваторн%' and
				warehouse_street ilike '%22%') or warehouse_street ilike '%ктсп%'), 'КТСП',
				(warehouse_city ilike '%петербург%' or warehouse_city ilike '%спб%') and warehouse_street ilike '%ТУРУХТАННЫЕ%' and warehouse_street ilike '%17%', 'НЕВА-МЕТАЛЛ',
				(warehouse_city ilike '%петербург%' or warehouse_city ilike '%спб%') and ((warehouse_street ilike '%ТУРУХТАННЫЕ%' and warehouse_street ilike '%26%') or warehouse_street ilike '%мгс%'),
				'МГС-Терминал',
				(warehouse_city ilike '%петербург%' or warehouse_city ilike '%спб%') and (warehouse_street ilike '%РЫБНЫЙ%' or (warehouse_street ilike '%элеваторн%' and warehouse_street ilike '%10%') or
				warehouse_street ilike '%тмрп%'), 'ТМРП',
				(warehouse_city ilike '%петербург%' or warehouse_city ilike '%спб%') AND ((warehouse_street ILIKE '%КАНОНЕРСКИЙ%' and warehouse_street ILIKE '%41%') OR
				warehouse_street ILIKE '% свят%' OR warehouse_street ILIKE '%св.%'), 'Терминал Святого Петра',
				(warehouse_city ilike '%петербург%' or warehouse_city ilike '%спб%' OR warehouse_city ilike '%ломоносов%') and ((warehouse_street ilike '%краснофлотск%' and warehouse_street ilike '%49%') or
				warehouse_street ilike '%феникс%' or warehouse_street ILIKE '%бронка%'), 'Феникс (Бронка)',
				warehouse_area ilike '%КАЛИНИНГРАД%' and warehouse_city ilike '%КАЛИНИНГРАД%' and warehouse_street ilike '%ПОРТОВ%', 'КМТП',
				warehouse_area ilike '%КАЛИНИНГРАД%' and warehouse_city ilike '%БАЛТИЙСК%' and (warehouse_street ilike '%НИЖН%' or warehouse_street ilike '%бск%'), 'БСК',
				warehouse_area ilike '%приморск%' and ((warehouse_street ilike '%БЕРЕЗОВ%' and warehouse_street ilike '%25%') or warehouse_street ilike '%ВМРП%' or
				(warehouse_street ilike '%БЕРЁЗОВ%' and warehouse_street ilike '%25%') or (warehouse_street ilike '%РЫБНЫЙ%' and warehouse_city ilike '%Владивосток%')), 'ВМРП/ВМКТ',
				warehouse_area ilike '%приморск%' and ((warehouse_street ilike '%42%' and warehouse_street ilike '%причал%') or (warehouse_street ilike '%полтавск%' and
				warehouse_street ilike '%18%') or warehouse_street ilike '%первомайск%'), 'ВМПП',
				warehouse_area ilike '%приморск%' and ((warehouse_street ilike '%СТРЕЛЬНИКОВ%' and warehouse_street ilike '%9%') or warehouse_street ilike '%вмтп%'), 'ВМТП',
				warehouse_area ilike '%приморск%' and (warehouse_street ilike '%ДАЛЬЗАВОДСКАЯ%' or warehouse_street ilike '%пасифик%'), 'ПЛ',
				warehouse_area ilike '%приморск%' and ((warehouse_street ilike '%ВОСТОЧНАЯ%' and warehouse_street ilike '%СТИВИДОРНАЯ%') or warehouse_street ilike '% ВСК%' or
				warehouse_street ilike '%"ВСК%' or (warehouse_street ilike '%ВНУТРИПОРТОВАЯ%' and warehouse_street ilike '%14%') or warehouse_street ilike 'ВСК'), 'ВСК', null
		) as port_terminal_fts,
		multiIf(port_terminal_fts = 'НУТЭП' or port_terminal_fts = 'НЛЭ' or port_terminal_fts = 'НМТП', 'Азово-Черноморский',
				port_terminal_fts = 'ПКТ' or port_terminal_fts = 'ПЛП' or port_terminal_fts = 'УЛКТ' or port_terminal_fts = 'КТСП' or port_terminal_fts = 'НЕВА-МЕТАЛЛ' or
				port_terminal_fts = 'МГС-Терминал' or port_terminal_fts = 'ТМРП' or port_terminal_fts = 'Терминал Святого Петра' or port_terminal_fts = 'Феникс (Бронка)' or
				port_terminal_fts = 'КМТП' or port_terminal_fts = 'БСК', 'Балтийский',
				port_terminal_fts = 'ВМРП/ВМКТ' or port_terminal_fts = 'ВМПП' or port_terminal_fts = 'ВМТП' or port_terminal_fts = 'ПЛ' or port_terminal_fts = 'ВСК', 'Дальневосточный', null
		) as bay_fts
FROM fts.fts_view fv
WHERE port_terminal_fts is not null and `year` = 2023
GROUP BY 1, 2, 3, 4, 5
SETTINGS
allow_experimental_live_view = 1