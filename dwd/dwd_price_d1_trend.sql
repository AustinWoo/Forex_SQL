



drop TABLE IF EXISTS forex.dwd_price_d1_trend;

select
  a.currency,
  a.pricedate,
  a.price,
  a.volume,
  a.r,
  CASE
    when a.[price]>(d1.[price]) then 1
    when a.[price]<(d1.[price]) then 0
    else 0
  END trend,
  a.[price]-d1.[price] as trend_gap,
  a.volume-d1.volume as volume_trend,
  a.volume/d1.volume as volume_trend_percent

into forex.dwd_price_d1_trend

from forex.dwd_price_d1 a
  LEFT OUTER JOIN forex.dwd_price_d1 d1
    on a.currency=d1.currency and a.r=d1.r+1
;