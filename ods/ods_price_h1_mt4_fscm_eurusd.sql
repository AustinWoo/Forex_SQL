TRUNCATE TABLE forex.ods_price_h1_mt4;

insert into forex.ods_price_h1_mt4
(currency, pricedate, pricetime, openbid, highbid, lowbid, closebid, openask, highask, lowask, closeask, totalticks)
select

  currency,
  CAST(date as DATE) as date,
  CAST(time AS TIME) as time,
  CAST([open] AS DOUBLE PRECISION) AS [open],

  CAST(high as DOUBLE PRECISION) as high,
  CAST(low as DOUBLE PRECISION) as low,
  CAST([close] as DOUBLE PRECISION) as [close],
  0,0,0,0,
  cast(volume as BIGINT) as volume
from forex.txt_ods_price_h1_mt4_fscm_eurusd
where year(CAST(date as DATE))>=1999
;