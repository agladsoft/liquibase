CREATE OR REPLACE VIEW default.import_main_duplicate_containers
AS SELECT *
   FROM default.import_main_containers
UNION ALL
 SELECT *
   FROM default.import_duplicate_containers
UNION ALL
 SELECT *
   FROM default.import_containers;