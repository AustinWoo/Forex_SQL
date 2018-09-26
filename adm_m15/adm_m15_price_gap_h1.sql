
drop table IF EXISTS adm.m15_price_gap_h1;

select
  a.currency,
  a.pricedate,
  a.pricetime,

  a.closebid - d1.[close] as gapbid_pre_m15_h1,
  a.closebid - d2.[close] as gapbid_pre_m15_h2,
  a.closebid - d3.[close] as gapbid_pre_m15_h3,
  a.closebid - d4.[close] as gapbid_pre_m15_h4,
  a.closebid - d5.[close] as gapbid_pre_m15_h5,
  a.closebid - d6.[close] as gapbid_pre_m15_h6,
  a.closebid - d7.[close] as gapbid_pre_m15_h7,
  a.closebid - d8.[close] as gapbid_pre_m15_h8,
  a.closebid - d9.[close] as gapbid_pre_m15_h9,
  a.closebid - d10.[close] as gapbid_pre_m15_h10,
  a.closebid - d11.[close] as gapbid_pre_m15_h11,
  a.closebid - d12.[close] as gapbid_pre_m15_h12,
  a.closebid - d13.[close] as gapbid_pre_m15_h13,
  a.closebid - d14.[close] as gapbid_pre_m15_h14,
  a.closebid - d15.[close] as gapbid_pre_m15_h15,
  a.closebid - d16.[close] as gapbid_pre_m15_h16,
  a.closebid - d17.[close] as gapbid_pre_m15_h17,
  a.closebid - d18.[close] as gapbid_pre_m15_h18,
  a.closebid - d19.[close] as gapbid_pre_m15_h19,
  a.closebid - d20.[close] as gapbid_pre_m15_h20,
  a.closebid - d21.[close] as gapbid_pre_m15_h21,
  a.closebid - d22.[close] as gapbid_pre_m15_h22,
  a.closebid - d23.[close] as gapbid_pre_m15_h23,
  a.closebid - d24.[close] as gapbid_pre_m15_h24,
  a.closebid - d25.[close] as gapbid_pre_m15_h25,
  a.closebid - d26.[close] as gapbid_pre_m15_h26,
  a.closebid - d27.[close] as gapbid_pre_m15_h27,
  a.closebid - d28.[close] as gapbid_pre_m15_h28,
  a.closebid - d29.[close] as gapbid_pre_m15_h29,
  a.closebid - d30.[close] as gapbid_pre_m15_h30,


  d1.trend as trend_pre_m15_h1,
  d2.trend as trend_pre_m15_h2,
  d3.trend as trend_pre_m15_h3,
  d4.trend as trend_pre_m15_h4,
  d5.trend as trend_pre_m15_h5,
  d6.trend as trend_pre_m15_h6,
  d7.trend as trend_pre_m15_h7,
  d8.trend as trend_pre_m15_h8,
  d9.trend as trend_pre_m15_h9,
  d10.trend as trend_pre_m15_h10,
  d11.trend as trend_pre_m15_h11,
  d12.trend as trend_pre_m15_h12,
  d13.trend as trend_pre_m15_h13,
  d14.trend as trend_pre_m15_h14,
  d15.trend as trend_pre_m15_h15,
  d16.trend as trend_pre_m15_h16,
  d17.trend as trend_pre_m15_h17,
  d18.trend as trend_pre_m15_h18,
  d19.trend as trend_pre_m15_h19,
  d20.trend as trend_pre_m15_h20,
  d21.trend as trend_pre_m15_h21,
  d22.trend as trend_pre_m15_h22,
  d23.trend as trend_pre_m15_h23,
  d24.trend as trend_pre_m15_h24,
  d25.trend as trend_pre_m15_h25,
  d26.trend as trend_pre_m15_h26,
  d27.trend as trend_pre_m15_h27,
  d28.trend as trend_pre_m15_h28,
  d29.trend as trend_pre_m15_h29,
  d30.trend as trend_pre_m15_h30,

  d1.trend_gap as trend_gap_pre_m15_h1,
  d2.trend_gap as trend_gap_pre_m15_h2,
  d3.trend_gap as trend_gap_pre_m15_h3,
  d4.trend_gap as trend_gap_pre_m15_h4,
  d5.trend_gap as trend_gap_pre_m15_h5,
  d6.trend_gap as trend_gap_pre_m15_h6,
  d7.trend_gap as trend_gap_pre_m15_h7,
  d8.trend_gap as trend_gap_pre_m15_h8,
  d9.trend_gap as trend_gap_pre_m15_h9,
  d10.trend_gap as trend_gap_pre_m15_h10,
  d11.trend_gap as trend_gap_pre_m15_h11,
  d12.trend_gap as trend_gap_pre_m15_h12,
  d13.trend_gap as trend_gap_pre_m15_h13,
  d14.trend_gap as trend_gap_pre_m15_h14,
  d15.trend_gap as trend_gap_pre_m15_h15,
  d16.trend_gap as trend_gap_pre_m15_h16,
  d17.trend_gap as trend_gap_pre_m15_h17,
  d18.trend_gap as trend_gap_pre_m15_h18,
  d19.trend_gap as trend_gap_pre_m15_h19,
  d20.trend_gap as trend_gap_pre_m15_h20,
  d21.trend_gap as trend_gap_pre_m15_h21,
  d22.trend_gap as trend_gap_pre_m15_h22,
  d23.trend_gap as trend_gap_pre_m15_h23,
  d24.trend_gap as trend_gap_pre_m15_h24,
  d25.trend_gap as trend_gap_pre_m15_h25,
  d26.trend_gap as trend_gap_pre_m15_h26,
  d27.trend_gap as trend_gap_pre_m15_h27,
  d28.trend_gap as trend_gap_pre_m15_h28,
  d29.trend_gap as trend_gap_pre_m15_h29,
  d30.trend_gap as trend_gap_pre_m15_h30

into adm.m15_price_gap_h1

from forex.dwd_price_closebid_m15_trend a


  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend b
    on a.currency=b.currency and a.pricedate=b.pricedate and datepart(HOUR,a.pricetime)=datepart(HOUR,b.pricetime)

  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d1
    on b.currency=d1.currency and b.r = d1.r+1
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d2
    on b.currency=d2.currency and b.r = d2.r+2
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d3
    on b.currency=d3.currency and b.r = d3.r+3
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d4
    on b.currency=d4.currency and b.r = d4.r+4
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d5
    on b.currency=d5.currency and b.r = d5.r+5
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d6
    on b.currency=d6.currency and b.r = d6.r+6
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d7
    on b.currency=d7.currency and b.r = d7.r+7
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d8
    on b.currency=d8.currency and b.r = d8.r+8
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d9
    on b.currency=d9.currency and b.r = d9.r+9
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d10
    on b.currency=d10.currency and b.r = d10.r+10
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d11
    on b.currency=d11.currency and b.r = d11.r+11
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d12
    on b.currency=d12.currency and b.r = d12.r+12
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d13
    on b.currency=d13.currency and b.r = d13.r+13
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d14
    on b.currency=d14.currency and b.r = d14.r+14

  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d15 on b.currency=d15.currency and b.r=d15.r+15
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d16 on b.currency=d16.currency and b.r=d16.r+16
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d17 on b.currency=d17.currency and b.r=d17.r+17
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d18 on b.currency=d18.currency and b.r=d18.r+18
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d19 on b.currency=d19.currency and b.r=d19.r+19
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d20 on b.currency=d20.currency and b.r=d20.r+20
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d21 on b.currency=d21.currency and b.r=d21.r+21
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d22 on b.currency=d22.currency and b.r=d22.r+22
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d23 on b.currency=d23.currency and b.r=d23.r+23
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d24 on b.currency=d24.currency and b.r=d24.r+24
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d25 on b.currency=d25.currency and b.r=d25.r+25
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d26 on b.currency=d26.currency and b.r=d26.r+26
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d27 on b.currency=d27.currency and b.r=d27.r+27
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d28 on b.currency=d28.currency and b.r=d28.r+28
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d29 on b.currency=d29.currency and b.r=d29.r+29
  LEFT OUTER JOIN forex.dwd_price_closebid_h1_trend d30 on b.currency=d30.currency and b.r=d30.r+30
;