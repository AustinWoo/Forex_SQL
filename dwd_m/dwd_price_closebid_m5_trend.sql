

drop TABLE IF EXISTS forex.dwd_price_closebid_m5_trend;


select
  a.currency,
  a.pricedate,
  a.pricetime,
  a.closebid,
  a.totalticks,
  a.r,
  CASE
    when a.closebid>(h1.closebid) then 1
    when a.closebid<(h1.closebid) then -1
    else 0
  END trend,
  a.closebid - h1.closebid as trend_gap,
  a.totalticks-h1.totalticks as tick_trend

into forex.dwd_price_closebid_m5_trend
from forex.dwd_price_bid_m5 a
  LEFT OUTER JOIN forex.dwd_price_bid_m5 h1
    on a.currency=h1.currency and a.r=h1.r+1
;