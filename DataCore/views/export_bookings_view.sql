CREATE OR REPLACE VIEW DataCore.export_bookings_view
AS
    SELECT *
    FROM DataCore.export_bookings
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.export_bookings
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );