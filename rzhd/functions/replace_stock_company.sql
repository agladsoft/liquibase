CREATE OR REPLACE FUNCTION replace_stock_company AS (payer_of_the_railway_tariff) ->
multiIf(
    payer_of_the_railway_tariff LIKE '%АКЦИОНЕРНАЯ КОМПАНИЯ%',
    replaceAll(payer_of_the_railway_tariff,
    'АКЦИОНЕРНАЯ КОМПАНИЯ',
    'АК'),
    payer_of_the_railway_tariff
);
