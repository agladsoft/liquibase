CREATE LIVE VIEW IF NOT EXISTS default.all_enriched WITH REFRESH 86400
AS SELECT * FROM default.all_enriched_interim