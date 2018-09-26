
drop TABLE IF EXISTS adm.m15_price_bar;
select
  a.currency,
  a.pricedate,
  a.pricetime,

  bh1.openclose as openclose_m15_1,
  bh2.openclose as openclose_m15_2,
  bh3.openclose as openclose_m15_3,
  bh4.openclose as openclose_m15_4,
  bh5.openclose as openclose_m15_5,
  bh6.openclose as openclose_m15_6,
  bh7.openclose as openclose_m15_7,
  bh8.openclose as openclose_m15_8,
  bh9.openclose as openclose_m15_9,
  bh10.openclose as openclose_m15_10,
  bh11.openclose as openclose_m15_11,
  bh12.openclose as openclose_m15_12,
  bh13.openclose as openclose_m15_13,
  bh14.openclose as openclose_m15_14,
  bh15.openclose as openclose_m15_15,
  bh16.openclose as openclose_m15_16,
  bh17.openclose as openclose_m15_17,
  bh18.openclose as openclose_m15_18,
  bh19.openclose as openclose_m15_19,
  bh20.openclose as openclose_m15_20,
  bh21.openclose as openclose_m15_21,
  bh22.openclose as openclose_m15_22,
  bh23.openclose as openclose_m15_23,
  bh24.openclose as openclose_m15_24,

  bh1.highlow as highlow_m15_1,
  bh2.highlow as highlow_m15_2,
  bh3.highlow as highlow_m15_3,
  bh4.highlow as highlow_m15_4,
  bh5.highlow as highlow_m15_5,
  bh6.highlow as highlow_m15_6,
  bh7.highlow as highlow_m15_7,
  bh8.highlow as highlow_m15_8,
  bh9.highlow as highlow_m15_9,
  bh10.highlow as highlow_m15_10,
  bh11.highlow as highlow_m15_11,
  bh12.highlow as highlow_m15_12,
  bh13.highlow as highlow_m15_13,
  bh14.highlow as highlow_m15_14,
  bh15.highlow as highlow_m15_15,
  bh16.highlow as highlow_m15_16,
  bh17.highlow as highlow_m15_17,
  bh18.highlow as highlow_m15_18,
  bh19.highlow as highlow_m15_19,
  bh20.highlow as highlow_m15_20,
  bh21.highlow as highlow_m15_21,
  bh22.highlow as highlow_m15_22,
  bh23.highlow as highlow_m15_23,
  bh24.highlow as highlow_m15_24,

  bh1.upbar as upbar_m15_1,
  bh2.upbar as upbar_m15_2,
  bh3.upbar as upbar_m15_3,
  bh4.upbar as upbar_m15_4,
  bh5.upbar as upbar_m15_5,
  bh6.upbar as upbar_m15_6,
  bh7.upbar as upbar_m15_7,
  bh8.upbar as upbar_m15_8,
  bh9.upbar as upbar_m15_9,
  bh10.upbar as upbar_m15_10,
  bh11.upbar as upbar_m15_11,
  bh12.upbar as upbar_m15_12,
  bh13.upbar as upbar_m15_13,
  bh14.upbar as upbar_m15_14,
  bh15.upbar as upbar_m15_15,
  bh16.upbar as upbar_m15_16,
  bh17.upbar as upbar_m15_17,
  bh18.upbar as upbar_m15_18,
  bh19.upbar as upbar_m15_19,
  bh20.upbar as upbar_m15_20,
  bh21.upbar as upbar_m15_21,
  bh22.upbar as upbar_m15_22,
  bh23.upbar as upbar_m15_23,
  bh24.upbar as upbar_m15_24,

  bh1.downbar as downbar_m15_1,
  bh2.downbar as downbar_m15_2,
  bh3.downbar as downbar_m15_3,
  bh4.downbar as downbar_m15_4,
  bh5.downbar as downbar_m15_5,
  bh6.downbar as downbar_m15_6,
  bh7.downbar as downbar_m15_7,
  bh8.downbar as downbar_m15_8,
  bh9.downbar as downbar_m15_9,
  bh10.downbar as downbar_m15_10,
  bh11.downbar as downbar_m15_11,
  bh12.downbar as downbar_m15_12,
  bh13.downbar as downbar_m15_13,
  bh14.downbar as downbar_m15_14,
  bh15.downbar as downbar_m15_15,
  bh16.downbar as downbar_m15_16,
  bh17.downbar as downbar_m15_17,
  bh18.downbar as downbar_m15_18,
  bh19.downbar as downbar_m15_19,
  bh20.downbar as downbar_m15_20,
  bh21.downbar as downbar_m15_21,
  bh22.downbar as downbar_m15_22,
  bh23.downbar as downbar_m15_23,
  bh24.downbar as downbar_m15_24

into adm.price_bar_m15



from forex.dwd_price_closebid_m15_trend a

  LEFT OUTER JOIN forex.dwd_price_bid_m15 bh1
    on a.currency=bh1.currency and a.r=bh1.r+1
  LEFT OUTER JOIN forex.dwd_price_bid_m15 bh2
    on a.currency=bh2.currency and a.r=bh2.r+2
  LEFT OUTER JOIN forex.dwd_price_bid_m15 bh3
    on a.currency=bh3.currency and a.r=bh3.r+3
  LEFT OUTER JOIN forex.dwd_price_bid_m15 bh4
    on a.currency=bh4.currency and a.r=bh4.r+4

LEFT OUTER JOIN forex.dwd_price_bid_m15 bh5
    on a.currency=bh5.currency and a.r=bh5.r+5
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh6
    on a.currency=bh6.currency and a.r=bh6.r+6
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh7
    on a.currency=bh7.currency and a.r=bh7.r+7
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh8
    on a.currency=bh8.currency and a.r=bh8.r+8

LEFT OUTER JOIN forex.dwd_price_bid_m15 bh9
    on a.currency=bh9.currency and a.r=bh9.r+9
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh10
    on a.currency=bh10.currency and a.r=bh10.r+10
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh11
    on a.currency=bh11.currency and a.r=bh11.r+11
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh12
    on a.currency=bh12.currency and a.r=bh12.r+12

LEFT OUTER JOIN forex.dwd_price_bid_m15 bh13
    on a.currency=bh13.currency and a.r=bh13.r+13
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh14
    on a.currency=bh14.currency and a.r=bh14.r+14
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh15
    on a.currency=bh15.currency and a.r=bh15.r+15
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh16
    on a.currency=bh16.currency and a.r=bh16.r+16

LEFT OUTER JOIN forex.dwd_price_bid_m15 bh17
    on a.currency=bh17.currency and a.r=bh17.r+17
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh18
    on a.currency=bh18.currency and a.r=bh18.r+18
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh19
    on a.currency=bh19.currency and a.r=bh19.r+19
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh20
    on a.currency=bh20.currency and a.r=bh20.r+20

LEFT OUTER JOIN forex.dwd_price_bid_m15 bh21
    on a.currency=bh21.currency and a.r=bh21.r+21
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh22
    on a.currency=bh22.currency and a.r=bh22.r+22
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh23
    on a.currency=bh23.currency and a.r=bh23.r+23
LEFT OUTER JOIN forex.dwd_price_bid_m15 bh24
    on a.currency=bh24.currency and a.r=bh24.r+24

;