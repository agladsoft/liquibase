CREATE OR REPLACE VIEW DataCore.development_counterparty_by_department_view
AS
    SELECT *
    FROM DataCore.development_counterparty_by_department
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.development_counterparty_by_department
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );