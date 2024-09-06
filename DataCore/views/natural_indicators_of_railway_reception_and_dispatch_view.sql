CREATE OR REPLACE VIEW DataCore.natural_indicators_of_railway_reception_and_dispatch_view
AS
    SELECT *
    FROM DataCore.natural_indicators_of_railway_reception_and_dispatch
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.natural_indicators_of_railway_reception_and_dispatch
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );