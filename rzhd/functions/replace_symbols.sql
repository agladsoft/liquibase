CREATE OR REPLACE FUNCTION replace_symbols AS (payer_of_the_railway_tariff) ->
trimBoth(replaceRegexpAll(upperUTF8(payer_of_the_railway_tariff), '[",?«».\']', ''));
