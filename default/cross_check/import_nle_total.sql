CREATE OR REPLACE VIEW default.import_nle_total
AS SELECT
    tmp2.month AS month,
    tmp2.year AS year,
    tmp2.direction AS direction,
    tmp2.is_empty AS is_empty,
    tmp2.is_ref AS is_ref,
    sum(tmp2.teu) AS teu_total
   FROM ( SELECT import_enriched.shipment_month AS month,
            import_enriched.shipment_year AS year,
            import_enriched.direction AS direction,
            import_enriched.is_empty AS is_empty,
            import_enriched.teu AS teu,
            import_enriched.container_type_unified AS container_type_unified,
                CASE
                    WHEN ilike(upper(import_enriched.container_type_unified), '%REF%') THEN true
                    ELSE false
                END AS is_ref
           FROM default.import_enriched
          WHERE import_enriched.terminal = 'НЛЭ'
          UNION ALL
          SELECT
              toMonth(date) AS shipment_month,
              toYear(date) AS shipment_year,
              'import' AS direction,
              false AS is_empty,
              intDiv(container_size, 20) AS teu,
              container_type AS container_type_unified,
              CASE
                  WHEN ilike(upper(container_type), '%REF%') THEN true
                  ELSE false
               END AS is_ref
          FROM (
                SELECT *, 1 as count_container_custom
                FROM default.extrapolate
                WHERE count_container > arrayJoin(range(0, 5000))
                )
          ) tmp2
  GROUP BY tmp2.month, tmp2.year, tmp2.direction, tmp2.is_empty, tmp2.is_ref;
