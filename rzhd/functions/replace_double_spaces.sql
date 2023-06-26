CREATE OR REPLACE FUNCTION replace_double_spaces AS (payer_of_the_railway_tariff) ->
replaceRegexpAll(payer_of_the_railway_tariff, ' +', ' ');
