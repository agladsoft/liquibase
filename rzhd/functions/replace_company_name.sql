CREATE OR REPLACE FUNCTION replace_company_name AS (payer_of_the_railway_tariff) ->
multiIf(
    payer_of_the_railway_tariff LIKE '%АКЦИОНЕРНАЯ КОМПАНИЯ%',
    replaceAll(payer_of_the_railway_tariff,
    'АКЦИОНЕРНАЯ КОМПАНИЯ',
    'АК'),
    payer_of_the_railway_tariff LIKE '%ОАО ТРАНСКОНТЕЙНЕР%',
    replaceAll(payer_of_the_railway_tariff,
    'ОАО ТРАНСКОНТЕЙНЕР',
    'ПАО ТРАНСКОНТЕЙНЕР'),
    payer_of_the_railway_tariff LIKE '%ОООАЗИЯВНЕШТРАНС%',
    replaceAll(payer_of_the_railway_tariff,
    'ОООАЗИЯВНЕШТРАНС',
    'ООО АЗИЯВНЕШТРАНС'),
    payer_of_the_railway_tariff LIKE '%АО МОНДИ СЫКТЫВКАРСКИЙ ЛПК%',
    replaceAll(payer_of_the_railway_tariff,
    'АО МОНДИ СЫКТЫВКАРСКИЙ ЛПК',
    'АО МОНДИ СЛПК'),
    payer_of_the_railway_tariff LIKE '%ГОРНО-ОБОГАТИТЕЛЬНЫЙ КОМБИНАТ%',
    replaceAll(payer_of_the_railway_tariff,
    'ГОРНО-ОБОГАТИТЕЛЬНЫЙ КОМБИНАТ',
    'ГОК'),
    payer_of_the_railway_tariff LIKE '%ООО ФЕСКО ИНТЕГРИРОВАННЫЙ ТРАНСПОРТ%',
    replaceAll(payer_of_the_railway_tariff,
    'ООО ФЕСКО ИНТЕГРИРОВАННЫЙ ТРАНСПОРТ',
    'ООО ФИТ'),
    payer_of_the_railway_tariff LIKE '%АО ОБЪЕДИНЕННАЯ ТРАНСПОРТНО-ЛОГИСТИЧЕСКАЯ КОМПАНИЯ%',
    replaceAll(payer_of_the_railway_tariff,
    'АО ОБЪЕДИНЕННАЯ ТРАНСПОРТНО-ЛОГИСТИЧЕСКАЯ КОМПАНИЯ',
    'АО ОТЛК'),
    payer_of_the_railway_tariff LIKE '%ТОРГОВЫЙ ДОМ ОРГХИМЗАО%',
    replaceAll(payer_of_the_railway_tariff,
    'ТОРГОВЫЙ ДОМ ОРГХИМЗАО',
    'ЗАО ТД ОРГХИМ'),
    payer_of_the_railway_tariff LIKE '%МУРМАНСКИЙ ТРАНСПОРТНЫЙ ФИЛИАЛ ОАО ГМК НОРИЛЬСКИЙ%',
    replaceAll(payer_of_the_railway_tariff,
    'МУРМАНСКИЙ ТРАНСПОРТНЫЙ ФИЛИАЛ ОАО ГМК НОРИЛЬСКИЙ',
    'МУРМАНСКИЙ ТРАНСПОРТНЫЙ ФИЛИАЛ ПАО ГМК НОРИЛЬСКИЙ НИКЕЛЬ'),
    payer_of_the_railway_tariff LIKE '%МУРМАНСКИЙ ТРАНСПОРТНЫЙ ФИЛИАЛ ПАО ГМК НОРИЛЬСКИЙ НИКЕЛЬЪЪА%',
    replaceAll(payer_of_the_railway_tariff,
    'МУРМАНСКИЙ ТРАНСПОРТНЫЙ ФИЛИАЛ ПАО ГМК НОРИЛЬСКИЙ НИКЕЛЬЪЪА',
    'МУРМАНСКИЙ ТРАНСПОРТНЫЙ ФИЛИАЛ ПАО ГМК НОРИЛЬСКИЙ НИКЕЛЬ'),
    payer_of_the_railway_tariff LIKE '%ОАОЗАВОД ЖБИ-2%',
    replaceAll(payer_of_the_railway_tariff,
    'ОАОЗАВОД ЖБИ-2',
    'ОАО ЗАВОД ЖБИ-2'),
    payer_of_the_railway_tariff
);
