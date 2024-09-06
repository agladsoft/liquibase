CREATE OR REPLACE VIEW DataCore.counterparties_view
AS
    SELECT *
    FROM DataCore.counterparties
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.counterparties
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );