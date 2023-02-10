CREATE OR REPLACE VIEW default.fts_view
AS SELECT
    default.id AS id,
    default.stat AS stat,
    default.declaration_number AS declaration_number,
    default.the_number_of_the_goods_is_the_following AS the_number_of_the_goods_is_the_following,
    default.commodity_code_according_to_hs AS commodity_code_according_to_hs,
    default.customs_code AS customs_code,
    default.date_of_registration AS date_of_registration,
    default.release_date AS release_date,
    default.date_of_the_brokers_certificate AS date_of_the_brokers_certificate,
    default.currency_exchange_rate_date AS currency_exchange_rate_date,
    default.direction_of_movement AS direction_of_movement,
    default.customs_regime AS customs_regime,
    default.senders_tin AS senders_tin,
    default.senders_name AS senders_name,
    default.address AS address,
    default.a_sign_of_container_transportation AS a_sign_of_container_transportation,
    default.recipients_tin AS recipients_tin,
    default.name_of_the_recipient AS name_of_the_recipient,
    default.recipients_country_code AS recipients_country_code,
    default.recipients_address AS recipients_address,
    default.inn_of_the_contract_holder AS inn_of_the_contract_holder,
    default.name_of_the_contract_holder AS name_of_the_contract_holder,
    default.country_code_of_the_contract_holder AS country_code_of_the_contract_holder,
    default.address_of_the_contract_holder AS address_of_the_contract_holder,
    default.code_of_the_trading_country AS code_of_the_trading_country,
    default.the_total_customs_value_of_the_gtd AS the_total_customs_value_of_the_gtd,
    default.declarants_inn AS declarants_inn,
    default.name_of_the_declarant AS name_of_the_declarant,
    default.the_code_of_the_declarants_country_of_residence AS the_code_of_the_declarants_country_of_residence,
    default.declarants_address AS declarants_address,
    default.senders_country_code AS senders_country_code,
    default.country_of_origin_code AS country_of_origin_code,
    default.country_of_departure AS country_of_departure,
    default.country_code_of_departure AS country_code_of_departure,
    default.country_of_origin AS country_of_origin,
    default.destination_country_code AS destination_country_code,
    default.destination_country AS destination_country,
    default.delivery_condition AS delivery_condition,
    default.point_of_supply_of_goods AS point_of_supply_of_goods,
    default.customs_code_at_the_border AS customs_code_at_the_border,
    default.name_and_characteristics_of_the_goods AS name_and_characteristics_of_the_goods,
    default.manufacturer_company AS manufacturer_company,
    default.number_of_containers AS number_of_containers,
    default.net_weight_kg AS net_weight_kg,
    default.gross_weight_kg AS gross_weight_kg,
    default.brokers_certificate_number AS brokers_certificate_number,
    default.brokers_inn AS brokers_inn,
    default.brokers_name AS brokers_name,
    default.brokers_address AS brokers_address,
    default.placeholders_full_name AS placeholders_full_name,
    default.placeholder_phone_number AS placeholder_phone_number,
    default.position_of_the_placeholder AS position_of_the_placeholder,
    default.certificate_of_svh AS certificate_of_svh,
    default.name_of_the_station_warehouse AS name_of_the_station_warehouse,
    default.senders_city AS senders_city,
    default.senders_index AS senders_index,
    default.senders_address AS senders_address,
    default.senders_area AS senders_area,
    default.warehouse_area AS warehouse_area,
    default.warehouse_street AS warehouse_street,
    default.warehouse_city AS warehouse_city,
    default.vidtrans AS vidtrans,
    default.original_file_name AS original_file_name,
    default.original_file_parsed_on AS original_file_parsed_on,
    default.original_file_index AS original_file_index
FROM default.fts;
