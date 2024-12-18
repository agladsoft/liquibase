CREATE OR REPLACE VIEW merchants.seller
AS
SELECT
  destination_station,
  seller_taxpayer_id,
  if(seller_unified IS NOT NULL, seller_unified, seller) AS seller,
  COUNT(seller) AS count_seller
FROM
  (
  SELECT
    destination_station,
    if(seller_priority IS NOT NULL, seller_priority, seller) AS seller,
    if(seller_priority_taxpayer_id IS NOT NULL, seller_priority_taxpayer_id, seller_taxpayer_id) AS seller_taxpayer_id,
    if(seller_priority_unified IS NOT NULL, seller_priority_unified, seller_unified) AS seller_unified,
    container_number,
    original_file_name,
    count(*) AS count_tnved
  FROM merchants.automation_shippers_consignees
  GROUP BY destination_station, container_number, seller, seller_taxpayer_id, seller_unified, original_file_name
  ) AS subquery
GROUP BY destination_station, seller_taxpayer_id, seller
ORDER BY count_seller DESC;