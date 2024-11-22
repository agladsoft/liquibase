CREATE OR REPLACE VIEW DataCore.terminals_capacity_view
AS
    SELECT *
    FROM DataCore.terminals_capacity
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.terminals_capacity
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );