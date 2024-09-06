CREATE OR REPLACE VIEW DataCore.natural_indicators_by_transaction_fact_date_view
AS
    SELECT *
    FROM DataCore.natural_indicators_by_transaction_fact_date
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.natural_indicators_by_transaction_fact_date
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );