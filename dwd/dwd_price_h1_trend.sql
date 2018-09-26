

drop TABLE IF EXISTS forex.dwd_price_h1_trend;


select
  a.currency,
  a.pricedate,
  a.pricetime,
  a.price,
  a.volume,
  a.r,
  CASE
    when a.[price]>(h1.[price]) then 1
    when a.[price]<(h1.[price]) then 0
    else 0
  END trend,
  a.[price] - h1.[price] as trend_gap,
  a.volume-h1.volume as volume_trend,
  case when cast(h1.volume as DOUBLE PRECISION)>0 then CAST(a.volume as DOUBLE PRECISION)/cast(h1.volume as DOUBLE PRECISION) else null end as volume_trend_perecent


into forex.dwd_price_h1_trend

from forex.dwd_price_h1 a
  LEFT OUTER JOIN forex.dwd_price_h1 h1
    on a.currency=h1.currency and a.r=h1.r+1
;