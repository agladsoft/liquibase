SET optimize_move_to_prewhere=0
SET receive_timeout=900
SET allow_experimental_live_view=1

CREATE LIVE VIEW IF NOT EXISTS rzhd.rzhd_ktk_view WITH REFRESH 86400
AS SELECT * FROM rzhd.rzhd_ktk_view_interim
SETTINGS
allow_experimental_live_view = 1