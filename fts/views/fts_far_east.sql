CREATE LIVE VIEW IF NOT EXISTS fts.fts_far_east WITH REFRESH 86400
AS SELECT
    f.`month` AS fts_month,
    f.`year` AS fts_year,
    f.recipients_tin AS inn,
    if(c.company_name is null, name_of_the_recipient, c.company_name) AS company_name,
    f.country_of_departure AS country_of_departure,
    substring((trim(f.commodity_code_according_to_hs)), 1, 6) AS code_gng,
    multiIf(f.warehouse_street ilike '%БЕРЕЗОВ%' AND f.warehouse_street ilike '%25%' , 'ВМРП',
            f.warehouse_street ilike '%42%' AND f.warehouse_street ilike '%причал%', 'ВМПП',
            f.warehouse_street ilike '%СТРЕЛЬНИКОВ%' AND f.warehouse_street ilike '%9%'
                AND f.warehouse_city ilike '%владивосток%', 'ВМТП',
            f.warehouse_street ilike '%ДАЛЬЗАВОДСКАЯ%'
                AND f.warehouse_street ilike '%2%'
                AND f.warehouse_city ilike '%владивосток%', 'ПЛ',
            (f.warehouse_street ilike '%ВОСТОЧНАЯ%'
                AND f.warehouse_street ilike '%СТИВИДОРНАЯ%')
                OR f.warehouse_street ilike '% ВСК%'
                OR f.warehouse_street ilike '%"ВСК%' OR
                (f.warehouse_street ilike '%ВНУТРИПОРТОВАЯ%' AND f.warehouse_street ilike '%14%')
                OR f.warehouse_street ilike 'ВСК', 'ВСК',
            'ДРУГИЕ') AS port_terminal,
    c.telephone_number AS telephone_number_compass,
    c.email AS email_compass,
    c.dadata_region AS region,
    m.department AS department,
    if(m.manager is not null, 'ДА', 'НЕТ') AS sign_client,
    m.telephone1 AS phone_number_crm,
    m.emailaddress1 AS email_crm,
    sum(f.number_of_containers) AS count_containers_fts
FROM fts.fts_view AS f
LEFT JOIN `default`.reference_compass AS c ON f.recipients_tin = c.inn
LEFT JOIN crm.managers_clients_view AS m ON m.kc_inn = f.recipients_tin
WHERE f.warehouse_area ILIKE '%ПРИМОРСК%' AND fts_year = 2023 AND fts_month >= 7 
    AND f.direction_of_movement = 'ИМ' AND f.recipients_tin IS NOT NULL and recipients_tin <> ''
	AND f.customs_regime = '40' AND f.stat = '1'
GROUP BY fts_month, fts_year, inn, company_name, f.country_of_departure, code_gng,
    port_terminal, telephone_number_compass, email_compass, region, department, 
    sign_client, phone_number_crm, email_crm;