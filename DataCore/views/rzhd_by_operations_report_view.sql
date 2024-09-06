CREATE OR REPLACE VIEW DataCore.rzhd_by_operations_report_view
AS
    SELECT *
    FROM DataCore.rzhd_by_operations_report
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.rzhd_by_operations_report
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );