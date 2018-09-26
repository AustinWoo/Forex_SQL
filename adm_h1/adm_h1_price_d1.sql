
drop table IF EXISTS adm.h1_price_d1;

select
  a.currency,
  a.pricedate,
  a.pricetime,

  --趋势特征
  case when a.price>d1.price then 1 when a.price<d1.price then 0 else 0 end as h1_t1_d1,           --day -1
  case when a.price>d2.price then 1 when a.price<d2.price then 0 else 0 end as h1_t1_d2,
  case when a.price>d3.price then 1 when a.price<d3.price then 0 else 0 end as h1_t1_d3,
  case when a.price>d4.price then 1 when a.price<d4.price then 0 else 0 end as h1_t1_d4,
  case when a.price>d5.price then 1 when a.price<d5.price then 0 else 0 end as h1_t1_d5,
  case when a.price>d6.price then 1 when a.price<d6.price then 0 else 0 end as h1_t1_d6,
  case when a.price>d7.price then 1 when a.price<d7.price then 0 else 0 end as h1_t1_d7,
  case when a.price>d8.price then 1 when a.price<d8.price then 0 else 0 end as h1_t1_d8,
  case when a.price>d9.price then 1 when a.price<d9.price then 0 else 0 end as h1_t1_d9,
  case when a.price>d10.price then 1 when a.price<d10.price then 0 else 0 end as h1_t1_d10,
  case when a.price>d11.price then 1 when a.price<d11.price then 0 else 0 end as h1_t1_d11,
  case when a.price>d12.price then 1 when a.price<d12.price then 0 else 0 end as h1_t1_d12,
  case when a.price>d13.price then 1 when a.price<d13.price then 0 else 0 end as h1_t1_d13,
  case when a.price>d14.price then 1 when a.price<d14.price then 0 else 0 end as h1_t1_d14,

  d1.trend as h1_t2_d1,       --day -1
  d2.trend as h1_t2_d2,
  d3.trend as h1_t2_d3,
  d4.trend as h1_t2_d4,
  d5.trend as h1_t2_d5,
  d6.trend as h1_t2_d6,
  d7.trend as h1_t2_d7,
  d8.trend as h1_t2_d8,
  d9.trend as h1_t2_d9,
  d10.trend as h1_t2_d10,
  d11.trend as h1_t2_d11,
  d12.trend as h1_t2_d12,
  d13.trend as h1_t2_d13,
  d14.trend as h1_t2_d14,

  --价格特征
  d1.price as h1_p1_d1,
  d2.price as h1_p1_d2,
  d3.price as h1_p1_d3,
  d4.price as h1_p1_d4,
  d5.price as h1_p1_d5,
  d6.price as h1_p1_d6,
  d7.price as h1_p1_d7,
  d8.price as h1_p1_d8,
  d9.price as h1_p1_d9,
  d10.price as h1_p1_d10,
  d11.price as h1_p1_d11,
  d12.price as h1_p1_d12,
  d13.price as h1_p1_d13,
  d14.price as h1_p1_d14,

  a.price - d1.price as h1_p2_d1,  --day -1
  a.price - d2.price as h1_p2_d2,
  a.price - d3.price as h1_p2_d3,
  a.price - d4.price as h1_p2_d4,
  a.price - d5.price as h1_p2_d5,
  a.price - d6.price as h1_p2_d6,
  a.price - d7.price as h1_p2_d7,
  a.price - d8.price as h1_p2_d8,
  a.price - d9.price as h1_p2_d9,
  a.price - d10.price as h1_p2_d10,
  a.price - d11.price as h1_p2_d11,
  a.price - d12.price as h1_p2_d12,
  a.price - d13.price as h1_p2_d13,
  a.price - d14.price as h1_p2_d14,


  d1.trend_gap as h1_p3_d1,   --day -1
  d2.trend_gap as h1_p3_d2,
  d3.trend_gap as h1_p3_d3,
  d4.trend_gap as h1_p3_d4,
  d5.trend_gap as h1_p3_d5,
  d6.trend_gap as h1_p3_d6,
  d7.trend_gap as h1_p3_d7,
  d8.trend_gap as h1_p3_d8,
  d9.trend_gap as h1_p3_d9,
  d10.trend_gap as h1_p3_d10,
  d11.trend_gap as h1_p3_d11,
  d12.trend_gap as h1_p3_d12,
  d13.trend_gap as h1_p3_d13,
  d14.trend_gap as h1_p3_d14

into adm.h1_price_d1

from forex.dwd_price_h1_trend a    --hour -1


  LEFT OUTER JOIN forex.dwd_price_d1_trend b   --day -0
    on a.currency=b.currency and a.pricedate=b.pricedate
  LEFT OUTER JOIN forex.dwd_price_d1_trend d1  --day -1
    on b.currency=d1.currency and b.r = d1.r+1
  LEFT OUTER JOIN forex.dwd_price_d1_trend d2  --day -2
    on b.currency=d2.currency and b.r = d2.r+2
  LEFT OUTER JOIN forex.dwd_price_d1_trend d3  --day -3
    on b.currency=d3.currency and b.r = d3.r+3
  LEFT OUTER JOIN forex.dwd_price_d1_trend d4
    on b.currency=d4.currency and b.r = d4.r+4
  LEFT OUTER JOIN forex.dwd_price_d1_trend d5
    on b.currency=d5.currency and b.r = d5.r+5
  LEFT OUTER JOIN forex.dwd_price_d1_trend d6
    on b.currency=d6.currency and b.r = d6.r+6
  LEFT OUTER JOIN forex.dwd_price_d1_trend d7
    on b.currency=d7.currency and b.r = d7.r+7
  LEFT OUTER JOIN forex.dwd_price_d1_trend d8
    on b.currency=d8.currency and b.r = d8.r+8
  LEFT OUTER JOIN forex.dwd_price_d1_trend d9
    on b.currency=d9.currency and b.r = d9.r+9
  LEFT OUTER JOIN forex.dwd_price_d1_trend d10
    on b.currency=d10.currency and b.r = d10.r+10
  LEFT OUTER JOIN forex.dwd_price_d1_trend d11
    on b.currency=d11.currency and b.r = d11.r+11
  LEFT OUTER JOIN forex.dwd_price_d1_trend d12
    on b.currency=d12.currency and b.r = d12.r+12
  LEFT OUTER JOIN forex.dwd_price_d1_trend d13
    on b.currency=d13.currency and b.r = d13.r+13
  LEFT OUTER JOIN forex.dwd_price_d1_trend d14
    on b.currency=d14.currency and b.r = d14.r+14

;