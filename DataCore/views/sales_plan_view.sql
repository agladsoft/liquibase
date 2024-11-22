CREATE OR REPLACE VIEW DataCore.sales_plan_view
AS
    SELECT *
    FROM DataCore.sales_plan
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.sales_plan
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );