CREATE LIVE VIEW default.import_empty_containers_and_region WITH REFRESH 120
AS SELECT DISTINCT
    uuid,
    goods_name,
    shipper_name,
    tracking_country,
    tracking_seaport,
    seaport_unified AS seaport_unified,
    country AS country,
    region AS region,
    is_auto_tracking,
    is_auto_tracking_ok
  FROM import, reference_region
  WHERE import.goods_name = 'порожний контейнер' 
  AND import.shipper_name ILIKE '% ' || reference_region.seaport || ' %'
SETTINGS
allow_experimental_live_view = 1