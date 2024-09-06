CREATE OR REPLACE VIEW DO.manager_evaluation_view
AS
    SELECT *
    FROM DO.manager_evaluation
    WHERE uuid IN (
        SELECT uuid
        FROM DO.manager_evaluation
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );