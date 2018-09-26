
drop TABLE IF EXISTS adm.h1_price_h1;
select
  a.currency,
  a.pricedate,
  a.pricetime,

  --趋势相关
  case when a.price>h1.price then 1 when a.price<h1.price then 0 else 0 end as h1_t1_h1,   --hour -1 vs hour -2
  case when a.price>h2.price then 1 when a.price<h2.price then 0 else 0 end as h1_t1_h2,   --hour -1 vs hour -3
  case when a.price>h3.price then 1 when a.price<h3.price then 0 else 0 end as h1_t1_h3,
  case when a.price>h4.price then 1 when a.price<h4.price then 0 else 0 end as h1_t1_h4,
  case when a.price>h5.price then 1 when a.price<h5.price then 0 else 0 end as h1_t1_h5,
  case when a.price>h6.price then 1 when a.price<h6.price then 0 else 0 end as h1_t1_h6,
  case when a.price>h7.price then 1 when a.price<h7.price then 0 else 0 end as h1_t1_h7,
  case when a.price>h8.price then 1 when a.price<h8.price then 0 else 0 end as h1_t1_h8,
  case when a.price>h9.price then 1 when a.price<h9.price then 0 else 0 end as h1_t1_h9,
  case when a.price>h10.price then 1 when a.price<h10.price then 0 else 0 end as h1_t1_h10,
  case when a.price>h11.price then 1 when a.price<h11.price then 0 else 0 end as h1_t1_h11,
  case when a.price>h12.price then 1 when a.price<h12.price then 0 else 0 end as h1_t1_h12,
  case when a.price>h13.price then 1 when a.price<h13.price then 0 else 0 end as h1_t1_h13,
  case when a.price>h14.price then 1 when a.price<h14.price then 0 else 0 end as h1_t1_h14,
  case when a.price>h15.price then 1 when a.price<h15.price then 0 else 0 end as h1_t1_h15,
  case when a.price>h16.price then 1 when a.price<h16.price then 0 else 0 end as h1_t1_h16,
  case when a.price>h17.price then 1 when a.price<h17.price then 0 else 0 end as h1_t1_h17,
  case when a.price>h18.price then 1 when a.price<h18.price then 0 else 0 end as h1_t1_h18,
  case when a.price>h19.price then 1 when a.price<h19.price then 0 else 0 end as h1_t1_h19,
  case when a.price>h20.price then 1 when a.price<h20.price then 0 else 0 end as h1_t1_h20,
  case when a.price>h21.price then 1 when a.price<h21.price then 0 else 0 end as h1_t1_h21,
  case when a.price>h22.price then 1 when a.price<h22.price then 0 else 0 end as h1_t1_h22,
  case when a.price>h23.price then 1 when a.price<h23.price then 0 else 0 end as h1_t1_h23,
  case when a.price>h24.price then 1 when a.price<h24.price then 0 else 0 end as h1_t1_h24,

  a.trend as h1_t2_h1,  --hour -1
  h1.trend as h1_t2_h2, --hour -2
  h2.trend as h1_t2_h3, --hour -3
  h3.trend as h1_t2_h4,
  h4.trend as h1_t2_h5,
  h5.trend as h1_t2_h6,
  h6.trend as h1_t2_h7,
  h7.trend as h1_t2_h8,
  h8.trend as h1_t2_h9,
  h9.trend as h1_t2_h10,
  h10.trend as h1_t2_h11,
  h11.trend as h1_t2_h12,
  h12.trend as h1_t2_h13,
  h13.trend as h1_t2_h14,
  h14.trend as h1_t2_h15,
  h15.trend as h1_t2_h16,
  h16.trend as h1_t2_h17,
  h17.trend as h1_t2_h18,
  h18.trend as h1_t2_h19,
  h19.trend as h1_t2_h20,
  h20.trend as h1_t2_h21,
  h21.trend as h1_t2_h22,
  h22.trend as h1_t2_h23,
  h23.trend as h1_t2_h24,

  --价格相关
  a.price as h1_p1_h1,    --hour -1
  h1.price as h1_p1_h2,   --hour -2
  h2.price as h1_p1_h3,
  h3.price as h1_p1_h4,
  h4.price as h1_p1_h5,
  h5.price as h1_p1_h6,
  h6.price as h1_p1_h7,
  h7.price as h1_p1_h8,
  h8.price as h1_p1_h9,
  h9.price as h1_p1_h10,
  h10.price as h1_p1_h11,
  h11.price as h1_p1_h12,
  h12.price as h1_p1_h13,
  h13.price as h1_p1_h14,
  h14.price as h1_p1_h15,
  h15.price as h1_p1_h16,
  h16.price as h1_p1_h17,
  h17.price as h1_p1_h18,
  h18.price as h1_p1_h19,
  h19.price as h1_p1_h20,
  h20.price as h1_p1_h21,
  h21.price as h1_p1_h22,
  h22.price as h1_p1_h23,
  h23.price as h1_p1_h24,

  a.price-h1.price as h1_p2_h1,  --hour -1 vs hour -2
  a.price-h2.price as h1_p2_h2,  --hour -1 vs hour -3
  a.price-h3.price as h1_p2_h3,
  a.price-h4.price as h1_p2_h4,
  a.price-h5.price as h1_p2_h5,
  a.price-h6.price as h1_p2_h6,
  a.price-h7.price as h1_p2_h7,
  a.price-h8.price as h1_p2_h8,
  a.price-h9.price as h1_p2_h9,
  a.price-h10.price as h1_p2_h10,
  a.price-h11.price as h1_p2_h11,
  a.price-h12.price as h1_p2_h12,
  a.price-h13.price as h1_p2_h13,
  a.price-h14.price as h1_p2_h14,
  a.price-h15.price as h1_p2_h15,
  a.price-h16.price as h1_p2_h16,
  a.price-h17.price as h1_p2_h17,
  a.price-h18.price as h1_p2_h18,
  a.price-h19.price as h1_p2_h19,
  a.price-h20.price as h1_p2_h20,
  a.price-h21.price as h1_p2_h21,
  a.price-h22.price as h1_p2_h22,
  a.price-h23.price as h1_p2_h23,
  a.price-h24.price as h1_p2_h24,

  a.trend_gap as h1_p3_h1,      --hour -1
  h1.trend_gap as h1_p3_h2,
  h2.trend_gap as h1_p3_h3,
  h3.trend_gap as h1_p3_h4,
  h4.trend_gap as h1_p3_h5,
  h5.trend_gap as h1_p3_h6,
  h6.trend_gap as h1_p3_h7,
  h7.trend_gap as h1_p3_h8,
  h8.trend_gap as h1_p3_h9,
  h9.trend_gap as h1_p3_h10,
  h10.trend_gap as h1_p3_h11,
  h11.trend_gap as h1_p3_h12,
  h12.trend_gap as h1_p3_h13,
  h13.trend_gap as h1_p3_h14,
  h14.trend_gap as h1_p3_h15,
  h15.trend_gap as h1_p3_h16,
  h16.trend_gap as h1_p3_h17,
  h17.trend_gap as h1_p3_h18,
  h18.trend_gap as h1_p3_h19,
  h19.trend_gap as h1_p3_h20,
  h20.trend_gap as h1_p3_h21,
  h21.trend_gap as h1_p3_h22,
  h22.trend_gap as h1_p3_h23,
  h23.trend_gap as h1_p3_h24

into adm.h1_price_h1

from forex.dwd_price_h1_trend a                  --hour -1
  LEFT OUTER JOIN forex.dwd_price_h1_trend h1    --hour -2
    on a.currency=h1.currency and a.r=h1.r+1
  LEFT OUTER JOIN forex.dwd_price_h1_trend h2    --hour -3
    on a.currency=h2.currency and a.r=h2.r+2
  LEFT OUTER JOIN forex.dwd_price_h1_trend h3    --hour -4
    on a.currency=h3.currency and a.r=h3.r+3
  LEFT OUTER JOIN forex.dwd_price_h1_trend h4
    on a.currency=h4.currency and a.r=h4.r+4
  LEFT OUTER JOIN forex.dwd_price_h1_trend h5
    on a.currency=h5.currency and a.r=h5.r+5
  LEFT OUTER JOIN forex.dwd_price_h1_trend h6
    on a.currency=h6.currency and a.r=h6.r+6
  LEFT OUTER JOIN forex.dwd_price_h1_trend h7
    on a.currency=h7.currency and a.r=h7.r+7
  LEFT OUTER JOIN forex.dwd_price_h1_trend h8
    on a.currency=h8.currency and a.r=h8.r+8
  LEFT OUTER JOIN forex.dwd_price_h1_trend h9
    on a.currency=h9.currency and a.r=h9.r+9
  LEFT OUTER JOIN forex.dwd_price_h1_trend h10
    on a.currency=h10.currency and a.r=h10.r+10
  LEFT OUTER JOIN forex.dwd_price_h1_trend h11
    on a.currency=h11.currency and a.r=h11.r+11
  LEFT OUTER JOIN forex.dwd_price_h1_trend h12
    on a.currency=h12.currency and a.r=h12.r+12

  LEFT OUTER JOIN forex.dwd_price_h1_trend h13
    on a.currency=h13.currency and a.r=h13.r+13
  LEFT OUTER JOIN forex.dwd_price_h1_trend h14
    on a.currency=h14.currency and a.r=h14.r+14
  LEFT OUTER JOIN forex.dwd_price_h1_trend h15
    on a.currency=h15.currency and a.r=h15.r+15
  LEFT OUTER JOIN forex.dwd_price_h1_trend h16
    on a.currency=h16.currency and a.r=h16.r+16

  LEFT OUTER JOIN forex.dwd_price_h1_trend h17
    on a.currency=h17.currency and a.r=h17.r+17
  LEFT OUTER JOIN forex.dwd_price_h1_trend h18
    on a.currency=h18.currency and a.r=h18.r+18
  LEFT OUTER JOIN forex.dwd_price_h1_trend h19
    on a.currency=h19.currency and a.r=h19.r+19
  LEFT OUTER JOIN forex.dwd_price_h1_trend h20
    on a.currency=h20.currency and a.r=h20.r+20

  LEFT OUTER JOIN forex.dwd_price_h1_trend h21
    on a.currency=h21.currency and a.r=h21.r+21
  LEFT OUTER JOIN forex.dwd_price_h1_trend h22
    on a.currency=h22.currency and a.r=h22.r+22
  LEFT OUTER JOIN forex.dwd_price_h1_trend h23
    on a.currency=h23.currency and a.r=h23.r+23
  LEFT OUTER JOIN forex.dwd_price_h1_trend h24
    on a.currency=h24.currency and a.r=h24.r+24

;