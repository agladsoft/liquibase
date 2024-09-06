CREATE OR REPLACE VIEW DataCore.daily_summary_view
AS
    SELECT *
    FROM DataCore.daily_summary
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.daily_summary
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );