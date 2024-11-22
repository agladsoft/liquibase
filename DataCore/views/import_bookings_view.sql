CREATE OR REPLACE VIEW DataCore.import_bookings_view
AS
    SELECT *
    FROM DataCore.import_bookings
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.import_bookings
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );