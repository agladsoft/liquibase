CREATE OR REPLACE VIEW DataCore.freight_rates_view
AS SELECT
    *
  FROM
    DataCore.freight_rates
  WHERE
    start_date <= now() AND expiration_date >= now() AND is_obsolete = FALSE
