
drop TABLE IF EXISTS adm.m30_price_gap;
select
  a.currency,
  a.pricedate,
  a.pricetime,

  a.closebid,
  a.trend,

  a.closebid-h1.closebid as gapbid_pre_m30_1,
  a.closebid-h2.closebid as gapbid_pre_m30_2,
  a.closebid-h3.closebid as gapbid_pre_m30_3,
  a.closebid-h4.closebid as gapbid_pre_m30_4,
  a.closebid-h5.closebid as gapbid_pre_m30_5,
  a.closebid-h6.closebid as gapbid_pre_m30_6,
  a.closebid-h7.closebid as gapbid_pre_m30_7,
  a.closebid-h8.closebid as gapbid_pre_m30_8,
  a.closebid-h9.closebid as gapbid_pre_m30_9,
  a.closebid-h10.closebid as gapbid_pre_m30_10,
  a.closebid-h11.closebid as gapbid_pre_m30_11,
  a.closebid-h12.closebid as gapbid_pre_m30_12,
  a.closebid-h13.closebid as gapbid_pre_m30_13,
  a.closebid-h14.closebid as gapbid_pre_m30_14,
  a.closebid-h15.closebid as gapbid_pre_m30_15,
  a.closebid-h16.closebid as gapbid_pre_m30_16,
  a.closebid-h17.closebid as gapbid_pre_m30_17,
  a.closebid-h18.closebid as gapbid_pre_m30_18,
  a.closebid-h19.closebid as gapbid_pre_m30_19,
  a.closebid-h20.closebid as gapbid_pre_m30_20,
  a.closebid-h21.closebid as gapbid_pre_m30_21,
  a.closebid-h22.closebid as gapbid_pre_m30_22,
  a.closebid-h23.closebid as gapbid_pre_m30_23,
  a.closebid-h24.closebid as gapbid_pre_m30_24,

  h1.trend as trend_pre_m30_1,
  h2.trend as trend_pre_m30_2,
  h3.trend as trend_pre_m30_3,
  h4.trend as trend_pre_m30_4,
  h5.trend as trend_pre_m30_5,
  h6.trend as trend_pre_m30_6,
  h7.trend as trend_pre_m30_7,
  h8.trend as trend_pre_m30_8,
  h9.trend as trend_pre_m30_9,
  h10.trend as trend_pre_m30_10,
  h11.trend as trend_pre_m30_11,
  h12.trend as trend_pre_m30_12,
  h13.trend as trend_pre_m30_13,
  h14.trend as trend_pre_m30_14,
  h15.trend as trend_pre_m30_15,
  h16.trend as trend_pre_m30_16,
  h17.trend as trend_pre_m30_17,
  h18.trend as trend_pre_m30_18,
  h19.trend as trend_pre_m30_19,
  h20.trend as trend_pre_m30_20,
  h21.trend as trend_pre_m30_21,
  h22.trend as trend_pre_m30_22,
  h23.trend as trend_pre_m30_23,
  h24.trend as trend_pre_m30_24,

  h1.trend_gap as trend_gap_pre_m30_1,
  h2.trend_gap as trend_gap_pre_m30_2,
  h3.trend_gap as trend_gap_pre_m30_3,
  h4.trend_gap as trend_gap_pre_m30_4,
  h5.trend_gap as trend_gap_pre_m30_5,
  h6.trend_gap as trend_gap_pre_m30_6,
  h7.trend_gap as trend_gap_pre_m30_7,
  h8.trend_gap as trend_gap_pre_m30_8,
  h9.trend_gap as trend_gap_pre_m30_9,
  h10.trend_gap as trend_gap_pre_m30_10,
  h11.trend_gap as trend_gap_pre_m30_11,
  h12.trend_gap as trend_gap_pre_m30_12,
  h13.trend_gap as trend_gap_pre_m30_13,
  h14.trend_gap as trend_gap_pre_m30_14,
  h15.trend_gap as trend_gap_pre_m30_15,
  h16.trend_gap as trend_gap_pre_m30_16,
  h17.trend_gap as trend_gap_pre_m30_17,
  h18.trend_gap as trend_gap_pre_m30_18,
  h19.trend_gap as trend_gap_pre_m30_19,
  h20.trend_gap as trend_gap_pre_m30_20,
  h21.trend_gap as trend_gap_pre_m30_21,
  h22.trend_gap as trend_gap_pre_m30_22,
  h23.trend_gap as trend_gap_pre_m30_23,
  h24.trend_gap as trend_gap_pre_m30_24


into adm.m30_price_gap

from forex.dwd_price_closebid_m30_trend a
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h1
    on a.currency=h1.currency and a.r=h1.r+1
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h2
    on a.currency=h2.currency and a.r=h2.r+2
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h3
    on a.currency=h3.currency and a.r=h3.r+3
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h4
    on a.currency=h4.currency and a.r=h4.r+4
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h5
    on a.currency=h5.currency and a.r=h5.r+5
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h6
    on a.currency=h6.currency and a.r=h6.r+6
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h7
    on a.currency=h7.currency and a.r=h7.r+7
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h8
    on a.currency=h8.currency and a.r=h8.r+8
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h9
    on a.currency=h9.currency and a.r=h9.r+9
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h10
    on a.currency=h10.currency and a.r=h10.r+10
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h11
    on a.currency=h11.currency and a.r=h11.r+11
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h12
    on a.currency=h12.currency and a.r=h12.r+12

  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h13
    on a.currency=h13.currency and a.r=h13.r+13
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h14
    on a.currency=h14.currency and a.r=h14.r+14
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h15
    on a.currency=h15.currency and a.r=h15.r+15
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h16
    on a.currency=h16.currency and a.r=h16.r+16

  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h17
    on a.currency=h17.currency and a.r=h17.r+17
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h18
    on a.currency=h18.currency and a.r=h18.r+18
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h19
    on a.currency=h19.currency and a.r=h19.r+19
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h20
    on a.currency=h20.currency and a.r=h20.r+20

  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h21
    on a.currency=h21.currency and a.r=h21.r+21
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h22
    on a.currency=h22.currency and a.r=h22.r+22
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h23
    on a.currency=h23.currency and a.r=h23.r+23
  LEFT OUTER JOIN forex.dwd_price_closebid_m30_trend h24
    on a.currency=h24.currency and a.r=h24.r+24

;