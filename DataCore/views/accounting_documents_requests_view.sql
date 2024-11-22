CREATE OR REPLACE VIEW DataCore.accounting_documents_requests_view
AS
    SELECT *
    FROM DataCore.accounting_documents_requests
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.accounting_documents_requests
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );