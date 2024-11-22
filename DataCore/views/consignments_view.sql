CREATE OR REPLACE VIEW DataCore.consignments_view
AS
    SELECT *
    FROM DataCore.consignments
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.consignments
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );