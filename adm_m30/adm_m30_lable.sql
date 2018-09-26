
drop table IF EXISTS adm.m30_lable;

select
  a.currency,
  a.pricedate,
  a.pricetime,
  CASE
    when a.closebid<b1.closebid then 1
    when a.closebid=b1.closebid then 0
    when a.closebid>b1.closebid then 0
  END as trend_m30_1,

  CASE
    when a.closebid<b2.closebid then 1
    when a.closebid=b2.closebid then 0
    when a.closebid>b2.closebid then 0
  END as trend_m30_2,

  CASE
    when a.closebid<b3.closebid then 1
    when a.closebid=b3.closebid then 0
    when a.closebid>b3.closebid then 0
  END as trend_m30_3,

  CASE
    when a.closebid<b4.closebid then 1
    when a.closebid=b4.closebid then 0
    when a.closebid>b4.closebid then 0
  END as trend_m30_4,

  CASE
    when a.closebid<b5.closebid then 1
    when a.closebid=b5.closebid then 0
    when a.closebid>b5.closebid then 0
  END as trend_m30_5,

  CASE
    when a.closebid<b6.closebid then 1
    when a.closebid=b6.closebid then 0
    when a.closebid>b6.closebid then 0
  END as trend_m30_6,

  b1.closebid-a.closebid as trend_gap_m30_1,
  b2.closebid-a.closebid as trend_gap_m30_2,
  b3.closebid-a.closebid as trend_gap_m30_3,
  b4.closebid-a.closebid as trend_gap_m30_4,
  b5.closebid-a.closebid as trend_gap_m30_5,
  b6.closebid-a.closebid as trend_gap_m30_6

INTO adm.m30_lable
from forex.dwd_price_bid_m30 a

  LEFT OUTER JOIN forex.dwd_price_bid_m30 b1
    on a.currency=b1.currency and a.r=b1.r-1

  LEFT OUTER JOIN forex.dwd_price_bid_m30 b2
    on a.currency=b2.currency and a.r=b2.r-2

  LEFT OUTER JOIN forex.dwd_price_bid_m30 b3
    on a.currency=b3.currency and a.r=b3.r-3

  LEFT OUTER JOIN forex.dwd_price_bid_m30 b4
    on a.currency=b4.currency and a.r=b4.r-4

  LEFT OUTER JOIN forex.dwd_price_bid_m30 b5
    on a.currency=b5.currency and a.r=b5.r-5

  LEFT OUTER JOIN forex.dwd_price_bid_m30 b6
    on a.currency=b6.currency and a.r=b6.r-6