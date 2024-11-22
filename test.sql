sudo docker-compose stop rabbitmq
sudo docker-compose rm rabbitmq

sudo docker exec -u root -t -i clickhouse_server /bin/sh

cd bitnami/clickhouse

clickhouse-client --user admin --password 6QVnYsC4iSzz

SELECT *, 1 as sign FROM DataCore.accounting_documents_requests WHERE is_obsolete=false INTO OUTFILE 'accounting_documents_requests.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.accounts WHERE is_obsolete=false INTO OUTFILE 'accounts.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.auto_pickup_general_report WHERE is_obsolete=false INTO OUTFILE 'auto_pickup_general_report.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.autovisits WHERE is_obsolete=false INTO OUTFILE 'autovisits.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.completed_repackages_report WHERE is_obsolete=false INTO OUTFILE 'completed_repackages_report.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.consignments WHERE is_obsolete=false INTO OUTFILE 'consignments.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.counterparties WHERE is_obsolete=false INTO OUTFILE 'counterparties.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.daily_summary WHERE is_obsolete=false INTO OUTFILE 'daily_summary.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.datacore_freight WHERE is_obsolete=false INTO OUTFILE 'datacore_freight.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.development_counterparty_by_department WHERE is_obsolete=false INTO OUTFILE 'development_counterparty_by_department.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.export_bookings WHERE is_obsolete=false INTO OUTFILE 'export_bookings.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.freight_rates WHERE is_obsolete=false INTO OUTFILE 'freight_rates.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.import_bookings WHERE is_obsolete=false INTO OUTFILE 'import_bookings.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.natural_indicators_by_contracts_segments WHERE is_obsolete=false INTO OUTFILE 'natural_indicators_by_contracts_segments.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.natural_indicators_by_transaction_fact_date WHERE is_obsolete=false INTO OUTFILE 'natural_indicators_by_transaction_fact_date.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.natural_indicators_of_railway_reception_and_dispatch WHERE is_obsolete=false INTO OUTFILE 'natural_indicators_of_railway_reception_and_dispatch.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.orders_marginality_report WHERE is_obsolete=false INTO OUTFILE 'orders_marginality_report.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.orders_report WHERE is_obsolete=false INTO OUTFILE 'orders_report.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.rzhd_by_operations_report WHERE is_obsolete=false INTO OUTFILE 'rzhd_by_operations_report.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.sales_plan WHERE is_obsolete=false INTO OUTFILE 'sales_plan.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DataCore.transport_units WHERE is_obsolete=false INTO OUTFILE 'transport_units.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DO.manager_evaluation WHERE is_obsolete=false INTO OUTFILE 'manager_evaluation.csv' FORMAT CSVWithNames
SELECT *, 1 as sign FROM DO.reference_counterparties WHERE is_obsolete=false INTO OUTFILE 'do_reference_counterparties.csv' FORMAT CSVWithNames

SELECT * FROM rzhd.rzhd_ktk INTO OUTFILE 'rzhd_ktk.csv' FORMAT CSVWithNames

SELECT * FROM merchants.automation_shippers_consignees INTO OUTFILE 'automation_shippers_consignees.csv' FORMAT CSVWithNames
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO merchants.automation_shippers_consignees FORMAT CSVWithNames" < automation_shippers_consignees.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO merchants.reference_stations FORMAT CSVWithNames" < reference_stations.csv

clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO default.import_nw FORMAT CSVWithNames" < import_nw.csv


clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.accounting_documents_requests FORMAT CSVWithNames" < accounting_documents_requests.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.accounts FORMAT CSVWithNames" < accounts.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.auto_pickup_general_report FORMAT CSVWithNames" < auto_pickup_general_report.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.autovisits FORMAT CSVWithNames" < autovisits.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.completed_repackages_report FORMAT CSVWithNames" < completed_repackages_report.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.consignments FORMAT CSVWithNames" < consignments.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.counterparties FORMAT CSVWithNames" < counterparties.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.daily_summary FORMAT CSVWithNames" < daily_summary.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.datacore_freight FORMAT CSVWithNames" < datacore_freight.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.development_counterparty_by_department FORMAT CSVWithNames" < development_counterparty_by_department.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.export_bookings FORMAT CSVWithNames" < export_bookings.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.freight_rates FORMAT CSVWithNames" < freight_rates.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.import_bookings FORMAT CSVWithNames" < import_bookings.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.natural_indicators_by_contracts_segments FORMAT CSVWithNames" < natural_indicators_by_contracts_segments.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.natural_indicators_by_transaction_fact_date FORMAT CSVWithNames" < natural_indicators_by_transaction_fact_date.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.natural_indicators_of_railway_reception_and_dispatch FORMAT CSVWithNames" < natural_indicators_of_railway_reception_and_dispatch.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.orders_marginality_report FORMAT CSVWithNames" < orders_marginality_report.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.orders_report FORMAT CSVWithNames" < orders_report.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.rzhd_by_operations_report FORMAT CSVWithNames" < rzhd_by_operations_report.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.sales_plan FORMAT CSVWithNames" < sales_plan.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DataCore.transport_units FORMAT CSVWithNames" < transport_units.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DO.manager_evaluation FORMAT CSVWithNames" < manager_evaluation.csv
clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO DO.reference_counterparties FORMAT CSVWithNames" < do_reference_counterparties.csv


clickhouse-client --user admin --password 6QVnYsC4iSzz -q "INSERT INTO rzhd.rzhd_ktk SETTINGS max_execution_time=800 FORMAT CSVWithNames" < rzhd_ktk.csv
