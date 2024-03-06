CREATE OR REPLACE VIEW default.nle_cross_export
AS SELECT
    ms.year AS year,
    ms.month AS month,
    multiIf(
        ms.terminal_operator = 'АО "НЛЭ"', 'НЛЭ',
        ms.terminal_operator = 'ПАО "НМТП"', 'НМТП',
        ms.terminal_operator
    ) AS terminal,
    ms.direction AS direction,
    ms.is_ref AS is_ref,
    ms.is_empty AS is_empty,
    if(ms.teu is NULL, 0, ms.teu) AS teu_morservice,
    if(ems.teu_total is NULL, 0, ems.teu_total) AS teu,
    teu_morservice - teu AS teu_delta
   FROM default.reference_morservice_all ms
     LEFT JOIN default.export_nle_total ems ON ms.year = ems.year AND ms.month = ems.month AND terminal = ems.terminal AND ms.direction = ems.direction AND ms.is_empty = ems.is_empty AND ms.is_ref = ems.is_ref
  WHERE ms.direction = 'export' AND (ms.terminal_operator = 'АО "НЛЭ"' OR ms.terminal_operator = 'ПАО "НМТП"');
