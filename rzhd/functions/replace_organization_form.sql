CREATE OR REPLACE FUNCTION replace_organization_form AS (payer_of_the_railway_tariff) ->
multiIf(
    payer_of_the_railway_tariff LIKE '%Обособленное подразделение Общества с ограниченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Обособленное подразделение Общества с ограниченной ответственностью',
    'ОП ООО'),
    payer_of_the_railway_tariff LIKE '%Общество  с ограниченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество  с ограниченной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с  ограниченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с  ограниченной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с Ограниченной Ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с Ограниченной Ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с оганиченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с оганиченной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниценной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниценной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченнной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченнной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной  ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной  ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной Ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной Ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной отвентственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной отвентственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной отвественностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной отвественностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной ответвенностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной ответвенностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной ответсвенностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной ответсвенностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной ответственнностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной ответственнностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной ответстсенностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной ответстсенностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной отвтственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной отвтственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной тветственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной тветственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченнойответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченнойответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченой ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченой ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с олграниченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с олграниченной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с органиченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с органиченной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%общество с ограниченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'общество с ограниченной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общества с ограниченной ответственностью%',
    replaceAll(payer_of_the_railway_tariff,
    'Общества с ограниченной ответственностью',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Общество с ограниченной ответственность%',
    replaceAll(payer_of_the_railway_tariff,
    'Общество с ограниченной ответственность',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%ОБЩЕСТВО  С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ%',
    replaceAll(payer_of_the_railway_tariff,
    'ОБЩЕСТВО  С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%ОБЩЕСТВО С ОРГАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ%',
    replaceAll(payer_of_the_railway_tariff,
    'ОБЩЕСТВО С ОРГАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ%',
    replaceAll(payer_of_the_railway_tariff,
    'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ',
    'ООО'),
    payer_of_the_railway_tariff LIKE '%Непубличное акционерное общество%',
    replaceAll(payer_of_the_railway_tariff,
    'Непубличное акционерное общество',
    'НАО'),
    payer_of_the_railway_tariff LIKE '%ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО%',
    replaceAll(payer_of_the_railway_tariff,
    'ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО',
    'ПАО'),
    payer_of_the_railway_tariff LIKE '%Публичное акционерное общество%',
    replaceAll(payer_of_the_railway_tariff,
    'Публичное акционерное общество',
    'ПАО'),
    payer_of_the_railway_tariff LIKE '%ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО%',
    replaceAll(payer_of_the_railway_tariff,
    'ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО',
    'ОАО'),
    payer_of_the_railway_tariff LIKE '%Открытое Акционерное Общество%',
    replaceAll(payer_of_the_railway_tariff,
    'Открытое Акционерное Общество',
    'ОАО'),
    payer_of_the_railway_tariff LIKE '%Открытое акционерное общество%',
    replaceAll(payer_of_the_railway_tariff,
    'Открытое акционерное общество',
    'ОАО'),
    payer_of_the_railway_tariff LIKE '%ЗАКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО%',
    replaceAll(payer_of_the_railway_tariff,
    'ЗАКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО',
    'ЗАО'),
    payer_of_the_railway_tariff LIKE '%Закрытое Акционерное Общество%',
    replaceAll(payer_of_the_railway_tariff,
    'Закрытое Акционерное Общество',
    'ЗАО'),
    payer_of_the_railway_tariff LIKE '%Закрытое акционерное общество%',
    replaceAll(payer_of_the_railway_tariff,
    'Закрытое акционерное общество',
    'ЗАО'),
    payer_of_the_railway_tariff LIKE '%ТОВАРИЩЕНСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ%',
    replaceAll(payer_of_the_railway_tariff,
    'ТОВАРИЩЕНСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ',
    'ТОО'),
    payer_of_the_railway_tariff LIKE '%АКЦИОНЕРНОЕ ОБЩЕСТВО%',
    replaceAll(payer_of_the_railway_tariff,
    'АКЦИОНЕРНОЕ ОБЩЕСТВО',
    'АО'),
    payer_of_the_railway_tariff LIKE '%Акционерное Общество%',
    replaceAll(payer_of_the_railway_tariff,
    'Акционерное Общество',
    'АО'),
    payer_of_the_railway_tariff LIKE '%Акционерное общество%',
    replaceAll(payer_of_the_railway_tariff,
    'Акционерное общество',
    'АО'),
    payer_of_the_railway_tariff LIKE '%акционерное общество%',
    replaceAll(payer_of_the_railway_tariff,
    'акционерное общество',
    'АО'),
    payer_of_the_railway_tariff LIKE '%АКЦИОНЕРНОГО ОБЩЕСТВА%',
    replaceAll(payer_of_the_railway_tariff,
    'АКЦИОНЕРНОГО ОБЩЕСТВА',
    'АО'),
    payer_of_the_railway_tariff LIKE '%Акционерного общества%',
    replaceAll(payer_of_the_railway_tariff,
    'Акционерного общества',
    'АО'),
    payer_of_the_railway_tariff LIKE '%ФЕДЕРАЛЬНОЕ АГЕНТСТВО%',
    replaceAll(payer_of_the_railway_tariff,
    'ФЕДЕРАЛЬНОЕ АГЕНТСТВО',
    'ФА'),
    payer_of_the_railway_tariff LIKE '%Центр по перевозке грузов в контейнера%',
    replaceAll(payer_of_the_railway_tariff,
    'Центр по перевозке грузов в контейнера',
    'ПАО Трансконтейнер'),
    payer_of_the_railway_tariff LIKE '%Публичное акционерное общество "Центр по перевозке грузов в контейнера%',
    replaceAll(payer_of_the_railway_tariff,
    'Публичное акционерное общество "Центр по перевозке грузов в контейнера',
    'ПАО Трансконтейнер'),
    payer_of_the_railway_tariff
);