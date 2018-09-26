
drop table IF EXISTS adm.m5_price_bar_h1;

select
  a.currency,
  a.pricedate,
  a.pricetime,

  d1.openclose as openclose_m5_h1,
  d2.openclose as openclose_m5_h2,
  d3.openclose as openclose_m5_h3,
  d4.openclose as openclose_m5_h4,
  d5.openclose as openclose_m5_h5,
  d6.openclose as openclose_m5_h6,
  d7.openclose as openclose_m5_h7,
  d8.openclose as openclose_m5_h8,
  d9.openclose as openclose_m5_h9,
  d10.openclose as openclose_m5_h10,
  d11.openclose as openclose_m5_h11,
  d12.openclose as openclose_m5_h12,
  d13.openclose as openclose_m5_h13,
  d14.openclose as openclose_m5_h14,
  d15.openclose as openclose_m5_h15,
  d16.openclose as openclose_m5_h16,
  d17.openclose as openclose_m5_h17,
  d18.openclose as openclose_m5_h18,
  d19.openclose as openclose_m5_h19,
  d20.openclose as openclose_m5_h20,
  d21.openclose as openclose_m5_h21,
  d22.openclose as openclose_m5_h22,
  d23.openclose as openclose_m5_h23,
  d24.openclose as openclose_m5_h24,
  d25.openclose as openclose_m5_h25,
  d26.openclose as openclose_m5_h26,
  d27.openclose as openclose_m5_h27,
  d28.openclose as openclose_m5_h28,
  d29.openclose as openclose_m5_h29,
  d30.openclose as openclose_m5_h30,

  d1.highlow as highlow_m5_h1,
  d2.highlow as highlow_m5_h2,
  d3.highlow as highlow_m5_h3,
  d4.highlow as highlow_m5_h4,
  d5.highlow as highlow_m5_h5,
  d6.highlow as highlow_m5_h6,
  d7.highlow as highlow_m5_h7,
  d8.highlow as highlow_m5_h8,
  d9.highlow as highlow_m5_h9,
  d10.highlow as highlow_m5_h10,
  d11.highlow as highlow_m5_h11,
  d12.highlow as highlow_m5_h12,
  d13.highlow as highlow_m5_h13,
  d14.highlow as highlow_m5_h14,
  d15.highlow as highlow_m5_h15,
  d16.highlow as highlow_m5_h16,
  d17.highlow as highlow_m5_h17,
  d18.highlow as highlow_m5_h18,
  d19.highlow as highlow_m5_h19,
  d20.highlow as highlow_m5_h20,
  d21.highlow as highlow_m5_h21,
  d22.highlow as highlow_m5_h22,
  d23.highlow as highlow_m5_h23,
  d24.highlow as highlow_m5_h24,
  d25.highlow as highlow_m5_h25,
  d26.highlow as highlow_m5_h26,
  d27.highlow as highlow_m5_h27,
  d28.highlow as highlow_m5_h28,
  d29.highlow as highlow_m5_h29,
  d30.highlow as highlow_m5_h30,

  d1.upbar as upbar_m5_h1,
  d2.upbar as upbar_m5_h2,
  d3.upbar as upbar_m5_h3,
  d4.upbar as upbar_m5_h4,
  d5.upbar as upbar_m5_h5,
  d6.upbar as upbar_m5_h6,
  d7.upbar as upbar_m5_h7,
  d8.upbar as upbar_m5_h8,
  d9.upbar as upbar_m5_h9,
  d10.upbar as upbar_m5_h10,
  d11.upbar as upbar_m5_h11,
  d12.upbar as upbar_m5_h12,
  d13.upbar as upbar_m5_h13,
  d14.upbar as upbar_m5_h14,
  d15.upbar as upbar_m5_h15,
  d16.upbar as upbar_m5_h16,
  d17.upbar as upbar_m5_h17,
  d18.upbar as upbar_m5_h18,
  d19.upbar as upbar_m5_h19,
  d20.upbar as upbar_m5_h20,
  d21.upbar as upbar_m5_h21,
  d22.upbar as upbar_m5_h22,
  d23.upbar as upbar_m5_h23,
  d24.upbar as upbar_m5_h24,
  d25.upbar as upbar_m5_h25,
  d26.upbar as upbar_m5_h26,
  d27.upbar as upbar_m5_h27,
  d28.upbar as upbar_m5_h28,
  d29.upbar as upbar_m5_h29,
  d30.upbar as upbar_m5_h30,

  d1.downbar as downbar_m5_h1,
  d2.downbar as downbar_m5_h2,
  d3.downbar as downbar_m5_h3,
  d4.downbar as downbar_m5_h4,
  d5.downbar as downbar_m5_h5,
  d6.downbar as downbar_m5_h6,
  d7.downbar as downbar_m5_h7,
  d8.downbar as downbar_m5_h8,
  d9.downbar as downbar_m5_h9,
  d10.downbar as downbar_m5_h10,
  d11.downbar as downbar_m5_h11,
  d12.downbar as downbar_m5_h12,
  d13.downbar as downbar_m5_h13,
  d14.downbar as downbar_m5_h14,
  d15.downbar as downbar_m5_h15,
  d16.downbar as downbar_m5_h16,
  d17.downbar as downbar_m5_h17,
  d18.downbar as downbar_m5_h18,
  d19.downbar as downbar_m5_h19,
  d20.downbar as downbar_m5_h20,
  d21.downbar as downbar_m5_h21,
  d22.downbar as downbar_m5_h22,
  d23.downbar as downbar_m5_h23,
  d24.downbar as downbar_m5_h24,
  d25.downbar as downbar_m5_h25,
  d26.downbar as downbar_m5_h26,
  d27.downbar as downbar_m5_h27,
  d28.downbar as downbar_m5_h28,
  d29.downbar as downbar_m5_h29,
  d30.downbar as downbar_m5_h30

into adm.m5_price_bar_h1

from forex.dwd_price_bid_m5 a

  LEFT OUTER JOIN forex.dwd_price_bid_h1 b
    on a.currency=b.currency and a.pricedate=b.pricedate and datepart(HOUR,a.pricetime)=datepart(HOUR,b.pricetime)


  LEFT OUTER JOIN forex.dwd_price_bid_h1 d1
    on b.currency=d1.currency and b.r=d1.r+1
  LEFT OUTER JOIN forex.dwd_price_bid_h1 d2
    on b.currency=d2.currency and b.r=d2.r+2
  LEFT OUTER JOIN forex.dwd_price_bid_h1 d3
    on b.currency=d3.currency and b.r=d3.r+3
  LEFT OUTER JOIN forex.dwd_price_bid_h1 d4
    on b.currency=d4.currency and b.r=d4.r+4
  LEFT OUTER JOIN forex.dwd_price_bid_h1 d5
    on b.currency=d5.currency and b.r=d5.r+5

 LEFT OUTER JOIN forex.dwd_price_bid_h1 d6
    on b.currency=d6.currency and b.r=d6.r+6
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d7
    on b.currency=d7.currency and b.r=d7.r+7
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d8
    on b.currency=d8.currency and b.r=d8.r+8
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d9
    on b.currency=d9.currency and b.r=d9.r+9
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d10
    on b.currency=d10.currency and b.r=d10.r+10

 LEFT OUTER JOIN forex.dwd_price_bid_h1 d11
    on b.currency=d11.currency and b.r=d11.r+11
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d12
    on b.currency=d12.currency and b.r=d12.r+12
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d13
    on b.currency=d13.currency and b.r=d13.r+13
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d14
    on b.currency=d14.currency and b.r=d14.r+14
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d15
    on b.currency=d15.currency and b.r=d15.r+15

 LEFT OUTER JOIN forex.dwd_price_bid_h1 d16
    on b.currency=d16.currency and b.r=d16.r+16
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d17
    on b.currency=d17.currency and b.r=d17.r+17
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d18
    on b.currency=d18.currency and b.r=d18.r+18
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d19
    on b.currency=d19.currency and b.r=d19.r+19
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d20
    on b.currency=d20.currency and b.r=d20.r+20

 LEFT OUTER JOIN forex.dwd_price_bid_h1 d21
    on b.currency=d21.currency and b.r=d21.r+21
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d22
    on b.currency=d22.currency and b.r=d22.r+22
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d23
    on b.currency=d23.currency and b.r=d23.r+23
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d24
    on b.currency=d24.currency and b.r=d24.r+24
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d25
    on b.currency=d25.currency and b.r=d25.r+25

 LEFT OUTER JOIN forex.dwd_price_bid_h1 d26
    on b.currency=d26.currency and b.r=d26.r+26
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d27
    on b.currency=d27.currency and b.r=d27.r+27
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d28
    on b.currency=d28.currency and b.r=d28.r+28
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d29
    on b.currency=d29.currency and b.r=d29.r+29
 LEFT OUTER JOIN forex.dwd_price_bid_h1 d30
    on b.currency=d30.currency and b.r=d30.r+30
;