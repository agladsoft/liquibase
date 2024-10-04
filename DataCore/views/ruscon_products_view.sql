CREATE OR REPLACE VIEW DataCore.ruscon_products_view
AS
    SELECT *
    FROM DataCore.ruscon_products
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.ruscon_products
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );