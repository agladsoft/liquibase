CREATE OR REPLACE VIEW DataCore.autovisits_view
AS
    SELECT *
    FROM DataCore.autovisits
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.autovisits
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );