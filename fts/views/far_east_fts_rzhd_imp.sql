CREATE LIVE VIEW IF NOT EXISTS fts.far_east_fts_rzhd_imp WITH REFRESH 86400
AS SELECT 
    fts_month, 
    fts_year, 
    inn, 
    company_name, 
    country_of_departure, 
    telephone_number_compass, 
    email_compass, 
    region, 
    department, 
    sign_client, 
    phone_number_crm, 
    email_crm, 
    code_gng, 
    port_terminal, 
    count_containers_fts,
    ktk.payer, 
    ktk.name_of_cargo, 
    ktk.destination_region, 
    ktk.rf_destination_station, 
    ktk.container_type_unified, 
    ktk.container_tonnage_unified, 
    ktk.count_containers_ktk,
    ROW_NUMBER() OVER (PARTITION BY fts_month, fts_year, inn, company_name, country_of_departure, 
        code_gng, port_terminal
    ) AS count_unique_containers_fts,
    if(count_unique_containers_fts = 1, count_containers_fts, NULL) AS containers_fts_by_row,
    ROW_NUMBER() OVER (PARTITION BY fts_month, fts_year, ktk.payer, code_gng, 
        ktk.name_of_cargo, ktk.destination_region, ktk.rf_destination_station, 
        ktk.container_type_unified, ktk.container_tonnage_unified
    ) AS count_unique_containers_ktk,
    IF(count_unique_containers_ktk = 1, ktk.count_containers_ktk, NULL) AS containers_ktk_by_row
from fts.fts_far_east f
INNER JOIN (SELECT departure_month, departure_year, payer_of_the_railway_tariff_unified AS payer, name_of_cargo, 
					cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng AS cargo_code_gng, 
					destination_region, rf_destination_station, container_type_unified, container_tonnage_unified, sum(quantity_of_containers) AS count_containers_ktk
			FROM rzhd.rzhd_ktk_view rkv 
			WHERE departure_year >= 2023 and departure_month >= 7 
			    AND type_of_transportation = 'Импорт' 
			    AND departure_region IN ('ВЛАДИВОСТОКС', 'УЛАН-УДЭНСКИ', 'ЧИТИНСКИЙ', 'ПЕТРОПАВЛОВС', 'САХАЛИНСКИЙ', 'ХАБАРОВСКИЙ')
				AND cargo_code_gng IS NOT NULL 
				AND LENGTH(cargo_code_according_to_the_harmonized_nomenclature_of_goods_gng) = 6
			GROUP BY departure_month, departure_year, payer, name_of_cargo, cargo_code_gng, 
			    destination_region, rf_destination_station, container_type_unified, container_tonnage_unified) AS ktk
ON f.code_gng = ktk.cargo_code_gng AND f.fts_year = ktk.departure_year AND f.fts_month = ktk.departure_month;