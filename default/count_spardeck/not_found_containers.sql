CREATE OR REPLACE VIEW default.not_found_containers
AS SELECT *
FROM (
    SELECT
        if(stividor = 'NCSP', 'NMTP', stividor) AS stividor,
        'import' AS direction,
        operator,
        line_unified,
        vessel,
        ship_name_unified,
        atb_moor_pier,
        month,
        year,
        if(total_volume_in is NULL, 0, total_volume_in) AS total_volume,
        count_container,
        toInt32(total_volume) - count_container as delta_count
    FROM reference_spardeck_unified
    LEFT JOIN (SELECT * FROM nle_spardeck WHERE direction = 'import') AS ins ON
        reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
        AND reference_spardeck_unified.month = ins.month_parsed_on
    WHERE ins.count_container = 0
        UNION ALL
    SELECT
        if(stividor = 'NCSP', 'NMTP', stividor) AS stividor,
        'export' AS direction,
        operator,
        line_unified,
        vessel,
        ship_name_unified,
        atb_moor_pier,
        month,
        year,
        if(total_volume_out is NULL, 0, total_volume_out) AS total_volume,
        count_container,
        total_volume - count_container as delta_count
    FROM reference_spardeck_unified
    LEFT JOIN (SELECT * FROM nle_spardeck WHERE direction = 'export') AS ins ON
        reference_spardeck_unified.ship_name_unified = ins.ship_name_unified
        AND reference_spardeck_unified.month = ins.month_parsed_on
    WHERE ins.count_container = 0
    );