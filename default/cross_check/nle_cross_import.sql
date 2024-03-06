CREATE OR REPLACE VIEW default.nle_cross_import
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
    if(ims.teu_total is NULL, 0, ims.teu_total) AS teu,
    teu_morservice - teu AS teu_delta
   FROM default.reference_morservice_all ms
     LEFT JOIN default.import_nle_total ims ON ms.year = ims.year AND ms.month = ims.month AND terminal = ims.terminal AND ms.direction = ims.direction AND ms.is_empty = ims.is_empty AND ms.is_ref = ims.is_ref
  WHERE ms.direction = 'import' AND (ms.terminal_operator = 'АО "НЛЭ"' OR ms.terminal_operator = 'ПАО "НМТП"');
