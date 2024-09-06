CREATE OR REPLACE VIEW DO.reference_counterparties_view
AS
    SELECT *
    FROM DO.reference_counterparties
    WHERE uuid IN (
        SELECT uuid
        FROM DO.reference_counterparties
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );