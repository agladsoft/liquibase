CREATE OR REPLACE VIEW rzhd.rzhd_novorossiysk_view
AS
    SELECT *
    FROM rzhd.rzhd_novorossiysk_container_0_view
    UNION ALL
    SELECT *
    FROM rzhd.rzhd_novorossiysk_container_view;