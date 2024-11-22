CREATE OR REPLACE VIEW DataCore.transport_units_view
AS
    SELECT *
    FROM DataCore.transport_units
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.transport_units
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );