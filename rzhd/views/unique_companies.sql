CREATE OR REPLACE VIEW rzhd.unique_companies
AS SELECT
    payer_of_the_railway_tariff_unified,
    sum_count_payer,
    sum(multiIf(view_name = 'rzhd_ktk_view', count_dupl_payer, 0)) AS rzhd_ktk_view,
    sum(multiIf(view_name = 'rzhd_novorossiysk_view', count_dupl_payer, 0)) AS rzhd_novorossiysk_view,
    sum(multiIf(view_name = 'rzhd_petersburg_view', count_dupl_payer, 0)) AS rzhd_petersburg_view,
    sum(multiIf(view_name = 'rzhd_weekly_view', count_dupl_payer, 0)) AS rzhd_weekly_view
FROM
(
    SELECT
        payer_of_the_railway_tariff_unified,
        view_name,
        count(*) AS count_dupl_payer,
        sum(count(*)) OVER (PARTITION BY payer_of_the_railway_tariff_unified) AS sum_count_payer
    FROM
    (
        SELECT
            payer_of_the_railway_tariff_unified,
            'rzhd_ktk_view' AS view_name
        FROM rzhd.rzhd_ktk_view
        UNION ALL
        SELECT
            payer_of_the_railway_tariff_unified,
            'rzhd_novorossiysk_view' AS view_name
        FROM rzhd.rzhd_novorossiysk_view
        UNION ALL
        SELECT
            payer_of_the_railway_tariff_unified,
            'rzhd_petersburg_view' AS view_name
        FROM rzhd.rzhd_petersburg_view
        UNION ALL
        SELECT
            payer_of_the_railway_tariff_unified,
            'rzhd_weekly_view' AS view_name
        FROM rzhd.rzhd_weekly_view
    ) AS all_views
    GROUP BY
        payer_of_the_railway_tariff_unified,
        view_name
) AS sum_and_group_payer
GROUP BY
    payer_of_the_railway_tariff_unified,
    sum_count_payer;