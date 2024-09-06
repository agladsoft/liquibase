CREATE OR REPLACE VIEW DataCore.natural_indicators_by_contracts_segments_view
AS
    SELECT *
    FROM DataCore.natural_indicators_by_contracts_segments
    WHERE uuid IN (
        SELECT uuid
        FROM DataCore.natural_indicators_by_contracts_segments
        GROUP BY uuid
        HAVING SUM(sign) > 0
    );