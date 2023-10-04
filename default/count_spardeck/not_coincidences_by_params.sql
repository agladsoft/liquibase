CREATE OR REPLACE VIEW default.not_coincidences_by_params
AS SELECT *
FROM (
    SELECT
        operator,
        line_unified,
        vessel,
        ship_name_unified,
        atb_moor_pier,
        month,
        year,
        total_volume_in,
        count_container,
        toInt32(total_volume_in) - count_container as delta_count
    FROM reference_spardeck_unified
    LEFT JOIN nle_spardeck AS ins ON
        reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
        AND reference_spardeck_unified.month = ins.month_parsed_on
    WHERE ins.count_container = 0
    );