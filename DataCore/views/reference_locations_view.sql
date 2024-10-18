CREATE OR REPLACE VIEW DataCore.reference_locations_view
AS
    SELECT *
    FROM DataCore.reference_locations
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.reference_locations
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );