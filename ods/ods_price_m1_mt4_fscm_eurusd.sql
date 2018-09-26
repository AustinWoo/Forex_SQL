select
  top 100
  currency,
  CAST(date as DATE) as date,
  CAST(time AS TIME) as time,
  CAST([open] AS DOUBLE PRECISION) AS [open],

  CAST(high as DOUBLE PRECISION) as high,
  CAST(low as DOUBLE PRECISION) as low,
  CAST([close] as DOUBLE PRECISION) as [close],
  cast(volume as BIGINT) as volume
from forex.ods_price_m1_mt4_fscm_eurusd
;