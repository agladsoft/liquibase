CREATE OR REPLACE FUNCTION replace_symbols_and_spaces AS (payer_of_the_railway_tariff) ->
trimBoth(replaceRegexpAll(replaceRegexpAll(upperUTF8(payer_of_the_railway_tariff), '[",?«.\']', ''), ' +', ' '));
