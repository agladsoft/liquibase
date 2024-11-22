CREATE OR REPLACE VIEW DataCore.auto_pickup_general_report_view
AS
    SELECT *
    FROM DataCore.auto_pickup_general_report
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.auto_pickup_general_report
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );