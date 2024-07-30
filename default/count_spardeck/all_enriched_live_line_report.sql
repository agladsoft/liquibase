CREATE LIVE VIEW IF NOT EXISTS default.all_enriched_live_line_report WITH REFRESH 86400
AS SELECT * FROM default.all_enriched_line_report
SETTINGS
allow_experimental_live_view = 1