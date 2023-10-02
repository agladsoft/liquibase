CREATE OR REPLACE VIEW default.reference_spardeck_unified_check
AS SELECT vessel AS vessel,
    ship_name_unified AS ship_name_unified
   FROM default.reference_spardeck_unified
  WHERE ship_name_unified IS NULL