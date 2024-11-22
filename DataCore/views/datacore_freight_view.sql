CREATE OR REPLACE VIEW DataCore.datacore_freight_view
AS
    SELECT *
    FROM DataCore.datacore_freight
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.datacore_freight
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );