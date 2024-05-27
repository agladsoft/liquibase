CREATE OR REPLACE VIEW merchants.buyer
AS
SELECT
  destination_station,
  buyer_taxpayer_id,
  if(buyer_unified IS NOT NULL, buyer_unified, buyer) AS buyer,
  SUM(count_tnved) AS total_count_tnved
FROM
  (
    SELECT
      destination_station,
      if(buyer_priority IS NOT NULL, buyer_priority, buyer) AS buyer,
      if(buyer_priority_taxpayer_id IS NOT NULL, buyer_priority_taxpayer_id, buyer_taxpayer_id) AS buyer_taxpayer_id,
      if(buyer_priority_unified IS NOT NULL, buyer_priority_unified, buyer_unified) AS buyer_unified,
      count(*) AS count_tnved
    FROM merchants.automation_shippers_consignees
    GROUP BY destination_station, buyer, buyer_taxpayer_id, buyer_unified
  ) AS subquery
GROUP BY destination_station, buyer_taxpayer_id, buyer
ORDER BY total_count_tnved DESC;