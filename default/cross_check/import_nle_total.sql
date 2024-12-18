CREATE OR REPLACE VIEW default.import_nle_total
AS SELECT
    tmp2.month AS month,
    tmp2.year AS year,
    tmp2.terminal AS terminal,
    tmp2.direction AS direction,
    tmp2.is_empty AS is_empty,
    tmp2.is_ref AS is_ref,
    sum(tmp2.teu) AS teu_total
   FROM ( SELECT import_enriched.shipment_month AS month,
            import_enriched.shipment_year AS year,
            import_enriched.terminal AS terminal,
            import_enriched.direction AS direction,
            import_enriched.is_empty AS is_empty,
            import_enriched.teu AS teu,
            import_enriched.container_type_unified AS container_type_unified,
            multiIf(ilike(upper(import_enriched.container_type_unified), '%REF%') = true and is_empty = true, false, ilike(upper(import_enriched.container_type_unified), '%REF%') = true and is_empty = false, true, false) AS is_ref
           FROM default.import_enriched
          WHERE import_enriched.terminal = 'НЛЭ'
          UNION ALL
          SELECT
              toMonth(date) AS shipment_month,
              toYear(date) AS shipment_year,
              terminal AS terminal,
              direction AS direction,
              is_empty AS is_empty,
              intDiv(container_size, 20) AS teu,
              container_type AS container_type_unified,
              multiIf(is_ref = true and is_empty = true, false, is_ref = true and is_empty = false, true, false) AS is_ref
          FROM (
                SELECT
                    *, arrayJoin(range(1, count_container + 1))
                FROM default.extrapolate
                WHERE direction = 'import'
                )
          ) tmp2
  GROUP BY tmp2.month, tmp2.year, tmp2.terminal, tmp2.direction, tmp2.is_empty, tmp2.is_ref;
