CREATE OR REPLACE VIEW DataCore.orders_report_view
AS
    SELECT *
    FROM DataCore.orders_report
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.orders_report
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );