CREATE OR REPLACE VIEW DataCore.freight_rates_view
AS
    SELECT *
    FROM DataCore.freight_rates
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.freight_rates
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );
