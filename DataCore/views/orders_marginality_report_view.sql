CREATE OR REPLACE VIEW DataCore.orders_marginality_report_view
AS
    SELECT *
    FROM DataCore.orders_marginality_report
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.orders_marginality_report
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );