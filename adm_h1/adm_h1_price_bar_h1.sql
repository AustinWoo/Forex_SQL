
drop TABLE IF EXISTS adm.h1_price_bar_h1;
select
  a.currency,
  a.pricedate,
  a.pricetime,

  a.openclose as h1_b1_h1,      -- hour -1
  bh1.openclose as h1_b1_h2,    -- hour -2
  bh2.openclose as h1_b1_h3,
  bh3.openclose as h1_b1_h4,
  bh4.openclose as h1_b1_h5,
  bh5.openclose as h1_b1_h6,
  bh6.openclose as h1_b1_h7,
  bh7.openclose as h1_b1_h8,
  bh8.openclose as h1_b1_h9,
  bh9.openclose as h1_b1_h10,
  bh10.openclose as h1_b1_h11,
  bh11.openclose as h1_b1_h12,
  bh12.openclose as h1_b1_h13,
  bh13.openclose as h1_b1_h14,
  bh14.openclose as h1_b1_h15,
  bh15.openclose as h1_b1_h16,
  bh16.openclose as h1_b1_h17,
  bh17.openclose as h1_b1_h18,
  bh18.openclose as h1_b1_h19,
  bh19.openclose as h1_b1_h20,
  bh20.openclose as h1_b1_h21,
  bh21.openclose as h1_b1_h22,
  bh22.openclose as h1_b1_h23,
  bh23.openclose as h1_b1_h24,

  a.highlow as h1_b2_h1,      --hour -1
  bh1.highlow as h1_b2_h2,    --hour -2
  bh2.highlow as h1_b2_h3,
  bh3.highlow as h1_b2_h4,
  bh4.highlow as h1_b2_h5,
  bh5.highlow as h1_b2_h6,
  bh6.highlow as h1_b2_h7,
  bh7.highlow as h1_b2_h8,
  bh8.highlow as h1_b2_h9,
  bh9.highlow as h1_b2_h10,
  bh10.highlow as h1_b2_h11,
  bh11.highlow as h1_b2_h12,
  bh12.highlow as h1_b2_h13,
  bh13.highlow as h1_b2_h14,
  bh14.highlow as h1_b2_h15,
  bh15.highlow as h1_b2_h16,
  bh16.highlow as h1_b2_h17,
  bh17.highlow as h1_b2_h18,
  bh18.highlow as h1_b2_h19,
  bh19.highlow as h1_b2_h20,
  bh20.highlow as h1_b2_h21,
  bh21.highlow as h1_b2_h22,
  bh22.highlow as h1_b2_h23,
  bh23.highlow as h1_b2_h24,

  a.upbar as h1_b3_h1,        --hour -1
  bh1.upbar as h1_b3_h2,
  bh2.upbar as h1_b3_h3,
  bh3.upbar as h1_b3_h4,
  bh4.upbar as h1_b3_h5,
  bh5.upbar as h1_b3_h6,
  bh6.upbar as h1_b3_h7,
  bh7.upbar as h1_b3_h8,
  bh8.upbar as h1_b3_h9,
  bh9.upbar as h1_b3_h10,
  bh10.upbar as h1_b3_h11,
  bh11.upbar as h1_b3_h12,
  bh12.upbar as h1_b3_h13,
  bh13.upbar as h1_b3_h14,
  bh14.upbar as h1_b3_h15,
  bh15.upbar as h1_b3_h16,
  bh16.upbar as h1_b3_h17,
  bh17.upbar as h1_b3_h18,
  bh18.upbar as h1_b3_h19,
  bh19.upbar as h1_b3_h20,
  bh20.upbar as h1_b3_h21,
  bh21.upbar as h1_b3_h22,
  bh22.upbar as h1_b3_h23,
  bh23.upbar as h1_b3_h24,

  a.downbar as h1_b4_h1,  --hour -1
  bh1.downbar as h1_b4_h2,
  bh2.downbar as h1_b4_h3,
  bh3.downbar as h1_b4_h4,
  bh4.downbar as h1_b4_h5,
  bh5.downbar as h1_b4_h6,
  bh6.downbar as h1_b4_h7,
  bh7.downbar as h1_b4_h8,
  bh8.downbar as h1_b4_h9,
  bh9.downbar as h1_b4_h10,
  bh10.downbar as h1_b4_h11,
  bh11.downbar as h1_b4_h12,
  bh12.downbar as h1_b4_h13,
  bh13.downbar as h1_b4_h14,
  bh14.downbar as h1_b4_h15,
  bh15.downbar as h1_b4_h16,
  bh16.downbar as h1_b4_h17,
  bh17.downbar as h1_b4_h18,
  bh18.downbar as h1_b4_h19,
  bh19.downbar as h1_b4_h20,
  bh20.downbar as h1_b4_h21,
  bh21.downbar as h1_b4_h22,
  bh22.downbar as h1_b4_h23,
  bh23.downbar as h1_b4_h24

into adm.h1_price_bar_h1



from forex.dwd_price_h1 a                     -- hour -1
  LEFT OUTER JOIN forex.dwd_price_h1 bh1      -- hour -2
    on a.currency=bh1.currency and a.r=bh1.r+1
  LEFT OUTER JOIN forex.dwd_price_h1 bh2      -- hour -3
    on a.currency=bh2.currency and a.r=bh2.r+2
  LEFT OUTER JOIN forex.dwd_price_h1 bh3      -- hour -4
    on a.currency=bh3.currency and a.r=bh3.r+3
  LEFT OUTER JOIN forex.dwd_price_h1 bh4      -- hour -5
    on a.currency=bh4.currency and a.r=bh4.r+4

  LEFT OUTER JOIN forex.dwd_price_h1 bh5
    on a.currency=bh5.currency and a.r=bh5.r+5
  LEFT OUTER JOIN forex.dwd_price_h1 bh6
    on a.currency=bh6.currency and a.r=bh6.r+6
  LEFT OUTER JOIN forex.dwd_price_h1 bh7
    on a.currency=bh7.currency and a.r=bh7.r+7
  LEFT OUTER JOIN forex.dwd_price_h1 bh8
    on a.currency=bh8.currency and a.r=bh8.r+8
  LEFT OUTER JOIN forex.dwd_price_h1 bh9
    on a.currency=bh9.currency and a.r=bh9.r+9
  LEFT OUTER JOIN forex.dwd_price_h1 bh10
    on a.currency=bh10.currency and a.r=bh10.r+10
  LEFT OUTER JOIN forex.dwd_price_h1 bh11
    on a.currency=bh11.currency and a.r=bh11.r+11
  LEFT OUTER JOIN forex.dwd_price_h1 bh12
    on a.currency=bh12.currency and a.r=bh12.r+12

  LEFT OUTER JOIN forex.dwd_price_h1 bh13
    on a.currency=bh13.currency and a.r=bh13.r+13
  LEFT OUTER JOIN forex.dwd_price_h1 bh14
    on a.currency=bh14.currency and a.r=bh14.r+14
  LEFT OUTER JOIN forex.dwd_price_h1 bh15
    on a.currency=bh15.currency and a.r=bh15.r+15
  LEFT OUTER JOIN forex.dwd_price_h1 bh16
    on a.currency=bh16.currency and a.r=bh16.r+16

  LEFT OUTER JOIN forex.dwd_price_h1 bh17
    on a.currency=bh17.currency and a.r=bh17.r+17
  LEFT OUTER JOIN forex.dwd_price_h1 bh18
    on a.currency=bh18.currency and a.r=bh18.r+18
  LEFT OUTER JOIN forex.dwd_price_h1 bh19
    on a.currency=bh19.currency and a.r=bh19.r+19
  LEFT OUTER JOIN forex.dwd_price_h1 bh20
    on a.currency=bh20.currency and a.r=bh20.r+20

  LEFT OUTER JOIN forex.dwd_price_h1 bh21
    on a.currency=bh21.currency and a.r=bh21.r+21
  LEFT OUTER JOIN forex.dwd_price_h1 bh22
    on a.currency=bh22.currency and a.r=bh22.r+22
  LEFT OUTER JOIN forex.dwd_price_h1 bh23
    on a.currency=bh23.currency and a.r=bh23.r+23


;