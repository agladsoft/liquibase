CREATE OR REPLACE VIEW rzhd.rzhd_novorossiysk_container_0_view
AS
    SELECT
        *
    FROM
        (
        SELECT
            rzhd_novorossiysk.wagon_number AS wagon_number,
            rzhd_novorossiysk.document_no AS document_no,
            rzhd_novorossiysk.departure_date AS departure_date,
            0 AS quantity_of_containers,
            rzhd_novorossiysk.container_no AS container_no,
            toMonth(departure_date) AS departure_month,
            toYear(departure_date) AS departure_year,
            rzhd_novorossiysk.type_of_transportation AS type_of_transportation,
            rzhd_novorossiysk.wagon_subgenus AS wagon_subgenus,
            rzhd_novorossiysk.cargo_code_of_the_etsng AS cargo_code_of_the_etsng,
            rzhd_novorossiysk.name_of_cargo AS name_of_cargo,
            rzhd_novorossiysk.state_of_departure AS state_of_departure,
            rzhd_novorossiysk.departure_region AS departure_region,
            rzhd_novorossiysk.departure_road AS departure_road,
            rzhd_novorossiysk.sign_of_departure_station_of_the_rf AS sign_of_departure_station_of_the_rf,
            rzhd_novorossiysk.shipper_according_to_egrpo AS shipper_according_to_egrpo,
            rzhd_novorossiysk.shipper_by_puzt AS shipper_by_puzt,
            swap_values(shipper_by_puzt, shipper_according_to_egrpo, 'неизвестен') AS common_shipper,
            rzhd_novorossiysk.shipper_okpo AS shipper_okpo,
            rzhd_novorossiysk.type_of_special_container AS type_of_special_container,
            if(rct.container_type_unified is null, 'нет данных', rct.container_type_unified) AS container_type_unified,
            rzhd_novorossiysk.departure_station_code_of_rf AS departure_station_code_of_rf,
            rzhd_novorossiysk.state_of_destination AS state_of_destination,
            rzhd_novorossiysk.destination_region AS destination_region,
            rzhd_novorossiysk.destination_road AS destination_road,
            rzhd_novorossiysk.rf_destination_station AS rf_destination_station,
            rzhd_novorossiysk.consignee_according_to_egrpo AS consignee_according_to_egrpo,
            rzhd_novorossiysk.consignee_by_puzt AS consignee_by_puzt,
            swap_values(consignee_by_puzt, consignee_according_to_egrpo, 'неизвестен') AS common_consignee,
            rzhd_novorossiysk.consignee_okpo AS consignee_okpo,
            rzhd_novorossiysk.wagon_operator AS wagon_operator,
            rzhd_novorossiysk.destination_station_code_of_rf AS destination_station_code_of_rf,
            rzhd_novorossiysk.wagon_owner_according_to_egrpo AS wagon_owner_according_to_egrpo,
            rzhd_novorossiysk.leaseholder AS leaseholder,
            replace_stock_company(replace_double_spaces(replace_organization_form(replace_symbols(payer_of_the_railway_tariff)))) AS payer_of_the_railway_tariff,
            if(rrcn.company_name_unified is not null, rrcn.company_name_unified, payer_of_the_railway_tariff) AS payer_of_the_railway_tariff_unified,
            rzhd_novorossiysk.weight AS weight,
            rzhd_novorossiysk.carriage_fee AS carriage_fee,
            rzhd_novorossiysk.cargo_class AS cargo_class,
            rzhd_novorossiysk.cis_departure_station AS cis_departure_station,
            rzhd_novorossiysk.cis_destination_station AS cis_destination_station,
            if(dispatch_category is not null, dispatch_category, 'нет данных') AS dispatch_category,
            rzhd_novorossiysk.container_tonnage AS container_tonnage,
            rt.container_tonnage_unified AS container_tonnage_unified,
            round(divide(rt.container_tonnage_unified, 20), 1) AS teu,
            rzhd_novorossiysk.wagon_model AS wagon_model,
            rzhd_novorossiysk.estimated_date_of_arrival AS estimated_date_of_arrival,
            rzhd_novorossiysk.arrival_date AS arrival_date,
            rzhd_novorossiysk.wagon_kilometers AS wagon_kilometers,
            rzhd_novorossiysk.date_of_disbursement AS date_of_disbursement,
            rzhd_novorossiysk.distance_zone_of_grouping_by_mileage AS distance_zone_of_grouping_by_mileage,
            rzhd_novorossiysk.departure_road_cis AS departure_road_cis,
            rzhd_novorossiysk.destination_road_cis AS destination_road_cis,
            rzhd_novorossiysk.departure_station_code_of_cis AS departure_station_code_of_cis,
            rzhd_novorossiysk.destination_station_code_of_cis AS destination_station_code_of_cis,
            rzhd_novorossiysk.departure_station_of_the_rf AS departure_station_of_the_rf,
            rzhd_novorossiysk.original_file_name AS original_file_name,
            rzhd_novorossiysk.original_file_parsed_on AS original_file_parsed_on,
            rzhd_novorossiysk.original_file_index AS original_file_index,
            COUNT(*) OVER (PARTITION BY wagon_number, document_no, departure_date, cargo_code_of_the_etsng, destination_station_code_of_rf, consignee_according_to_egrpo) AS group_wagon_doc_date
        FROM rzhd.rzhd_novorossiysk
        LEFT JOIN rzhd.reference_tonnage AS rt ON rzhd_novorossiysk.container_tonnage = rt.container_tonnage
        LEFT JOIN rzhd.reference_container_type AS rct ON rzhd_novorossiysk.type_of_special_container = rct.type_of_special_container
        LEFT JOIN rzhd.reference_replace_company_name AS rrcn ON payer_of_the_railway_tariff = rrcn.company_name
        WHERE container_no = '0')
    WHERE group_wagon_doc_date = 1 or (group_wagon_doc_date > 1 and arrival_date is not null)