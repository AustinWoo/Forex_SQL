
drop table IF EXISTS adm.h1_price_bar_d1;

select
  a.currency,
  a.pricedate,
  a.pricetime,

  d1.openclose as h1_b1_d1,   --day -1
  d2.openclose as h1_b1_d2,   --day -2
  d3.openclose as h1_b1_d3,
  d4.openclose as h1_b1_d4,
  d5.openclose as h1_b1_d5,
  d6.openclose as h1_b1_d6,
  d7.openclose as h1_b1_d7,
  d8.openclose as h1_b1_d8,
  d9.openclose as h1_b1_d9,
  d10.openclose as h1_b1_d10,
  d11.openclose as h1_b1_d11,
  d12.openclose as h1_b1_d12,
  d13.openclose as h1_b1_d13,
  d14.openclose as h1_b1_d14,

  d1.highlow as h1_b2_d1,     --day -1
  d2.highlow as h1_b2_d2,     --day -2
  d3.highlow as h1_b2_d3,
  d4.highlow as h1_b2_d4,
  d5.highlow as h1_b2_d5,
  d6.highlow as h1_b2_d6,
  d7.highlow as h1_b2_d7,
  d8.highlow as h1_b2_d8,
  d9.highlow as h1_b2_d9,
  d10.highlow as h1_b2_d10,
  d11.highlow as h1_b2_d11,
  d12.highlow as h1_b2_d12,
  d13.highlow as h1_b2_d13,
  d14.highlow as h1_b2_d14,

  d1.upbar as h1_b3_d1,   --day -1
  d2.upbar as h1_b3_d2,   --day -2
  d3.upbar as h1_b3_d3,
  d4.upbar as h1_b3_d4,
  d5.upbar as h1_b3_d5,
  d6.upbar as h1_b3_d6,
  d7.upbar as h1_b3_d7,
  d8.upbar as h1_b3_d8,
  d9.upbar as h1_b3_d9,
  d10.upbar as h1_b3_d10,
  d11.upbar as h1_b3_d11,
  d12.upbar as h1_b3_d12,
  d13.upbar as h1_b3_d13,
  d14.upbar as h1_b3_d14,

  d1.downbar as h1_b4_d1,   --day -1
  d2.downbar as h1_b4_d2,   --day -2
  d3.downbar as h1_b4_d3,
  d4.downbar as h1_b4_d4,
  d5.downbar as h1_b4_d5,
  d6.downbar as h1_b4_d6,
  d7.downbar as h1_b4_d7,
  d8.downbar as h1_b4_d8,
  d9.downbar as h1_b4_d9,
  d10.downbar as h1_b4_d10,
  d11.downbar as h1_b4_d11,
  d12.downbar as h1_b4_d12,
  d13.downbar as h1_b4_d13,
  d14.downbar as h1_b4_d14

into adm.h1_price_bar_d1

from forex.dwd_price_h1 a                 --hour -1


  LEFT OUTER JOIN forex.dwd_price_d1 b    --(hour -1)day 0
    on a.currency=b.currency and a.pricedate=b.pricedate
  LEFT OUTER JOIN forex.dwd_price_d1 d1   --day -1
    on b.currency=d1.currency and b.r=d1.r+1
  LEFT OUTER JOIN forex.dwd_price_d1 d2   --day -2
    on b.currency=d2.currency and b.r=d2.r+2
  LEFT OUTER JOIN forex.dwd_price_d1 d3   --day -3
    on b.currency=d3.currency and b.r=d3.r+3
  LEFT OUTER JOIN forex.dwd_price_d1 d4
    on b.currency=d4.currency and b.r=d4.r+4
  LEFT OUTER JOIN forex.dwd_price_d1 d5
    on b.currency=d5.currency and b.r=d5.r+5

   LEFT OUTER JOIN forex.dwd_price_d1 d6
      on b.currency=d6.currency and b.r=d6.r+6
   LEFT OUTER JOIN forex.dwd_price_d1 d7
      on b.currency=d7.currency and b.r=d7.r+7
   LEFT OUTER JOIN forex.dwd_price_d1 d8
      on b.currency=d8.currency and b.r=d8.r+8
   LEFT OUTER JOIN forex.dwd_price_d1 d9
      on b.currency=d9.currency and b.r=d9.r+9
   LEFT OUTER JOIN forex.dwd_price_d1 d10
      on b.currency=d10.currency and b.r=d10.r+10

   LEFT OUTER JOIN forex.dwd_price_d1 d11
      on b.currency=d11.currency and b.r=d11.r+11
   LEFT OUTER JOIN forex.dwd_price_d1 d12
      on b.currency=d12.currency and b.r=d12.r+12
   LEFT OUTER JOIN forex.dwd_price_d1 d13
      on b.currency=d13.currency and b.r=d13.r+13
   LEFT OUTER JOIN forex.dwd_price_d1 d14
      on b.currency=d14.currency and b.r=d14.r+14

  ;