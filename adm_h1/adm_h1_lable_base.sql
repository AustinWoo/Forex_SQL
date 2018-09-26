
drop table IF EXISTS adm.h1_lable_base;

select
  a.currency,
  a.pricedate,
  a.pricetime,

  a.[close],
  a.[open],
  a.high,
  a.low,

  a.price_4avg,
  a.price_2avg,

  b1.[close] as h1_close,
  b1.[open] as h1_open,
  b1.high as h1_high,
  b1.low as h1_low,
  b1.price_2avg as h1_price_2avg,
  b1.price_4avg as h1_price_4avg,

  b2.[close] as h2_close,
  b2.[open] as h2_open,
  b2.high as h2_high,
  b2.low as h2_low,
  b2.price_2avg as h2_price_2avg,
  b2.price_4avg as h2_price_4avg,

  b3.[close] as h3_close,
  b3.[open] as h3_open,
  b3.high as h3_high,
  b3.low as h3_low,
  b3.price_2avg as h3_price_2avg,
  b3.price_4avg as h3_price_4avg,

  b4.[close] as h4_close,
  b4.[open] as h4_open,
  b4.high as h4_high,
  b4.low as h4_low,
  b4.price_2avg as h4_price_2avg,
  b4.price_4avg as h4_price_4avg,

  b5.[close] as h5_close,
  b5.[open] as h5_open,
  b5.high as h5_high,
  b5.low as h5_low,
  b5.price_2avg as h5_price_2avg,
  b5.price_4avg as h5_price_4avg,

  b6.[close] as h6_close,
  b6.[open] as h6_open,
  b6.high as h6_high,
  b6.low as h6_low,
  b6.price_2avg as h6_price_2avg,
  b6.price_4avg as h6_price_4avg

INTO adm.h1_lable_base


from forex.dwd_price_h1 a                   --hour -1

  LEFT OUTER JOIN forex.dwd_price_h1 b1     --hour 0
    on a.currency=b1.currency and a.r=b1.r-1
  LEFT OUTER JOIN forex.dwd_price_h1 b2     --hour 1
    on a.currency=b2.currency and a.r=b2.r-2
  LEFT OUTER JOIN forex.dwd_price_h1 b3     --hour 2
    on a.currency=b3.currency and a.r=b3.r-3
  LEFT OUTER JOIN forex.dwd_price_h1 b4     --hour 3
    on a.currency=b4.currency and a.r=b4.r-4
  LEFT OUTER JOIN forex.dwd_price_h1 b5     --hour 4
    on a.currency=b5.currency and a.r=b5.r-5
  LEFT OUTER JOIN forex.dwd_price_h1 b6     --hour 5
    on a.currency=b6.currency and a.r=b6.r-6