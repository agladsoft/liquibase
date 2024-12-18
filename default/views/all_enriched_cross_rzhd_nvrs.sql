CREATE LIVE VIEW default.all_enriched_cross_rzhd_nvrs WITH REFRESH 86400
AS SELECT
    ae.month AS shipment_month,
    ae.container_number,
    ae.shipment_date,
    ae.goods_name,
    ae.company_unified,
    ae.company_inn,
    ae.line_unified,
    ae.tracking_seaport_unified,
    ae.container_type_unified,
    ae.tracking_country_unified,
    ae.terminal,
    ae.is_empty,
    nvrs.departure_month,
    nvrs.departure_date,
    nvrs.container_no,
    nvrs.name_of_cargo,
    nvrs.common_shipper,
    nvrs.common_consignee,
    nvrs.rf_destination_station,
    nvrs.departure_station_of_the_rf AS rf_departure_station,
    nvrs.destination_region,
    nvrs.type_of_special_container,
    nvrs.state_of_departure,
    nvrs.type_of_transportation
FROM default.all_enriched AS ae
INNER JOIN
(
    SELECT
        departure_month,
        departure_date,
        container_no,
        name_of_cargo,
        type_of_transportation,
        common_shipper,
        common_consignee,
        rf_destination_station,
        destination_region,
        departure_station_of_the_rf,
        type_of_special_container,
        state_of_departure
    FROM rzhd.rzhd_novorossiysk_view AS rnv
    WHERE (container_no != '0') AND (departure_month > 3) AND (departure_year = 2023) AND (departure_station_of_the_rf ILIKE '%НОВОРОС%') AND (name_of_cargo NOT IN ('КОНТ УН ПРИВ',
 'КОНТЕЙН СП ПРИВ'))
    GROUP BY
        departure_month,
        departure_date,
        container_no,
        name_of_cargo,
        type_of_transportation,
        common_shipper,
        common_consignee,
        rf_destination_station,
        destination_region,
        departure_station_of_the_rf,
        type_of_special_container,
        state_of_departure
) AS nvrs ON (ae.month = nvrs.departure_month) AND (ae.container_number = nvrs.container_no)
WHERE (ae.year = 2023) AND (ae.month > 3) AND (ae.direction = 'import') AND (ae.is_empty = false) AND (ae.terminal IN ('НУТЭП',
 'НЛЭ')) AND (goods_name NOT IN ('КОНТЕЙНЕР МОРСКОЙ УНИВЕРСАЛЬНЫЙ',
 'контейнер',
 'КОНТЕЙНЕР КРУПНОТОННАЖНЫЙ 40 ФУТОВЫЙ УНИВЕРСАЛЬНЫЙ БЫВШИЙ В УПОТРЕБЛЕНИИ'))
GROUP BY
    ae.month,
    ae.container_number,
    ae.shipment_date,
    ae.goods_name,
    ae.company_unified,
    ae.company_inn,
    ae.line_unified,
    ae.tracking_seaport_unified,
    ae.container_type_unified,
    ae.tracking_country_unified,
    ae.terminal,
    ae.is_empty,
    nvrs.departure_month,
    nvrs.departure_date,
    nvrs.container_no,
    nvrs.name_of_cargo,
    nvrs.common_shipper,
    nvrs.common_consignee,
    nvrs.rf_destination_station,
    nvrs.departure_station_of_the_rf,
    nvrs.destination_region,
    nvrs.type_of_special_container,
    nvrs.state_of_departure,
    nvrs.type_of_transportation
SETTINGS
allow_experimental_live_view = 1