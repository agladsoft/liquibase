CREATE OR REPLACE VIEW DataCore.accounts_view
AS
    SELECT *
    FROM DataCore.accounts
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.accounts
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );