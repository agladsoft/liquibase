CREATE LIVE VIEW IF NOT EXISTS fts.far_east_fts_rzhd_imp
AS SELECT
	fts_month,
    fts_year,
    inn,
    company_name,
    country_of_departure,
    code_gng,
    bay,
    terminal,
    telephone_number_compass,
    email_compass,
    region,
    department,
    manager,
    sign_client,
    phone_number_crm,
    email_crm,
    count_containers_fts,
    ktk.name_of_cargo AS name_of_cargo,
    tnved.TextEx2 AS name_of_cargo_gng,
    ktk.destination_region AS destination_region,
    ktk.rf_destination_station AS rf_destination_station,
    ktk.count_containers_ktk AS count_containers_ktk,
    row_number() OVER (PARTITION BY fts_month,
 	fts_year,
 	inn,
 	company_name,
 	country_of_departure,
 	code_gng,
 	bay,
 	terminal) AS count_unique_containers_fts,
    if(count_unique_containers_fts = 1, count_containers_fts, NULL) AS containers_fts_by_row,
    row_number() OVER (PARTITION BY fts_month,
 	fts_year,
 	code_gng,
 	ktk.name_of_cargo,
 	ktk.destination_region,
 	ktk.rf_destination_station,
 	bay) AS count_unique_containers_ktk,
    if(count_unique_containers_ktk = 1, ktk.count_containers_ktk, NULL) AS containers_ktk_by_row
FROM fts.fts_far_east AS f
INNER JOIN
(
    SELECT
        departure_month,
        departure_year,
        cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng AS cargo_code_gng,
        name_of_cargo,
        destination_region,
        rf_destination_station,
        multiIf((departure_region ILIKE '%ВЛАДИВОСТОКС%') OR (departure_region ILIKE '%ХАБАРОВСК%'),
             'Дальневосточный',
             (departure_region ILIKE '%СПБ-ВИТЕБСКИ%') OR (departure_region ILIKE '%САНКТ-ПЕТЕРБ%') OR (departure_region ILIKE '%КАЛИНИНГРАДС%'),
             'Балтийский',
             (departure_region ILIKE '%КРАСНОДАРСКИ%') OR (departure_region ILIKE '%ТУАПСИНСКИЙ%'),
             'Азово-Черноморский',
             NULL) AS ktk_bay,
        sum(quantity_of_containers) AS count_containers_ktk
    FROM rzhd.rzhd_ktk_view AS rkv
    WHERE (departure_year >= 2023) AND (departure_month >= 7) AND (type_of_transportation = 'Импорт') AND (cargo_code_gng IS NOT NULL) AND (length(cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng) = 6) AND (ktk_bay IS NOT NULL)
    GROUP BY
        departure_month,
        departure_year,
        cargo_code_gng,
        name_of_cargo,
        destination_region,
        rf_destination_station,
        ktk_bay
) AS ktk ON (f.code_gng = ktk.cargo_code_gng) AND (f.fts_year = ktk.departure_year) AND (f.fts_month = ktk.departure_month) AND (f.bay = ktk.ktk_bay)
LEFT JOIN
(
    SELECT
        Code AS code,
        gng AS tnved_gng,
        TextEx2
    FROM default.reference_tnved3 AS rt
    WHERE TextEx2 IS NOT NULL
) AS tnved ON f.code_gng = tnved.tnved_gng