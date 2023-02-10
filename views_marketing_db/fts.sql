CREATE OR REPLACE VIEW default.fts_view
AS SELECT
    fts.id AS id,
    fts.stat AS stat,
    fts.declaration_number AS declaration_number,
    fts.the_number_of_the_goods_is_the_following AS the_number_of_the_goods_is_the_following,
    fts.commodity_code_according_to_hs AS commodity_code_according_to_hs,
    fts.customs_code AS customs_code,
    fts.date_of_registration AS date_of_registration,
    fts.release_date AS release_date,
    fts.date_of_the_brokers_certificate AS date_of_the_brokers_certificate,
    fts.currency_exchange_rate_date AS currency_exchange_rate_date,
    fts.direction_of_movement AS direction_of_movement,
    fts.customs_regime AS customs_regime,
    fts.senders_tin AS senders_tin,
    fts.senders_name AS senders_name,
    fts.address AS address,
    fts.a_sign_of_container_transportation AS a_sign_of_container_transportation,
    fts.recipients_tin AS recipients_tin,
    fts.name_of_the_recipient AS name_of_the_recipient,
    fts.recipients_country_code AS recipients_country_code,
    fts.recipients_address AS recipients_address,
    fts.inn_of_the_contract_holder AS inn_of_the_contract_holder,
    fts.name_of_the_contract_holder AS name_of_the_contract_holder,
    fts.country_code_of_the_contract_holder AS country_code_of_the_contract_holder,
    fts.address_of_the_contract_holder AS address_of_the_contract_holder,
    fts.code_of_the_trading_country AS code_of_the_trading_country,
    fts.the_total_customs_value_of_the_gtd AS the_total_customs_value_of_the_gtd,
    fts.declarants_inn AS declarants_inn,
    fts.name_of_the_declarant AS name_of_the_declarant,
    fts.the_code_of_the_declarants_country_of_residence AS the_code_of_the_declarants_country_of_residence,
    fts.declarants_address AS declarants_address,
    fts.senders_country_code AS senders_country_code,
    fts.country_of_origin_code AS country_of_origin_code,
    fts.country_of_departure AS country_of_departure,
    fts.country_code_of_departure AS country_code_of_departure,
    fts.country_of_origin AS country_of_origin,
    fts.destination_country_code AS destination_country_code,
    fts.destination_country AS destination_country,
    fts.delivery_condition AS delivery_condition,
    fts.point_of_supply_of_goods AS point_of_supply_of_goods,
    fts.customs_code_at_the_border AS customs_code_at_the_border,
    fts.name_and_characteristics_of_the_goods AS name_and_characteristics_of_the_goods,
    fts.manufacturer_company AS manufacturer_company,
    fts.number_of_containers AS number_of_containers,
    fts.net_weight_kg AS net_weight_kg,
    fts.gross_weight_kg AS gross_weight_kg,
    fts.brokers_certificate_number AS brokers_certificate_number,
    fts.brokers_inn AS brokers_inn,
    fts.brokers_name AS brokers_name,
    fts.brokers_address AS brokers_address,
    fts.placeholders_full_name AS placeholders_full_name,
    fts.placeholder_phone_number AS placeholder_phone_number,
    fts.position_of_the_placeholder AS position_of_the_placeholder,
    fts.certificate_of_svh AS certificate_of_svh,
    fts.name_of_the_station_warehouse AS name_of_the_station_warehouse,
    fts.senders_city AS senders_city,
    fts.senders_index AS senders_index,
    fts.senders_address AS senders_address,
    fts.senders_area AS senders_area,
    fts.warehouse_area AS warehouse_area,
    fts.warehouse_street AS warehouse_street,
    fts.warehouse_city AS warehouse_city,
    fts.vidtrans AS vidtrans,
    fts.original_file_name AS original_file_name,
    fts.original_file_parsed_on AS original_file_parsed_on,
    fts.original_file_index AS original_file_index
FROM default.fts;

