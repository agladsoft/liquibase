CREATE OR REPLACE VIEW DataCore.completed_repackages_report_view
AS
    SELECT *
    FROM DataCore.completed_repackages_report
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.completed_repackages_report
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );