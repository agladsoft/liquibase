CREATE OR REPLACE VIEW merchants.group_containers
AS
SELECT
  destination_station,
  container_number,
  if(seller_priority IS NOT NULL, seller_priority, seller) AS seller,
  if(seller_priority_taxpayer_id IS NOT NULL, seller_priority_taxpayer_id, seller_taxpayer_id) AS seller_taxpayer_id,
  if(seller_priority_unified IS NOT NULL, seller_priority_unified, seller_unified) AS seller_unified,
  if(buyer_priority IS NOT NULL, buyer_priority, buyer) AS buyer,
  if(buyer_priority_taxpayer_id IS NOT NULL, buyer_priority_taxpayer_id, buyer_taxpayer_id) AS buyer_taxpayer_id,
  if(buyer_priority_unified IS NOT NULL, buyer_priority_unified, buyer_unified) AS buyer_unified,
  original_file_name,
  count(*) AS count_tnved
FROM merchants.automation_shippers_consignees
GROUP BY destination_station, container_number, seller, seller_taxpayer_id, seller_unified, buyer, buyer_taxpayer_id, buyer_unified, original_file_name