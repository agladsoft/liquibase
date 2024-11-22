CREATE OR REPLACE VIEW DataCore.marginality_orders_by_act_date_view
AS
    SELECT *
    FROM DataCore.marginality_orders_by_act_date
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.marginality_orders_by_act_date
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );