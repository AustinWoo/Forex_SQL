
drop table IF EXISTS adm.h1_lable;

select
  currency,
  pricedate,
  pricetime,  --hour -1


  case
    when h1_price_4avg>[price_4avg] then 1
    else 0
  end as lable_h1_4avg,  --hour 0
  case
    when h2_price_4avg>[price_4avg] then 1
    else 0
  end as lable_h2_4avg,
  case
    when h3_price_4avg>[price_4avg] then 1
    else 0
  end as lable_h3_4avg,
  case
    when h5_price_4avg>[price_4avg] then 1
    else 0
  end as lable_h5_4avg,


  case
    when h1_price_2avg>[price_2avg] then 1
    else 0
  end as lable_h1_2avg,
  case
    when h2_price_2avg>[price_2avg] then 1
    else 0
  end as lable_h2_2avg,
  case
    when h3_price_2avg>[price_2avg] then 1
    else 0
  end as lable_h3_2avg,
  case
    when h5_price_2avg>[price_2avg] then 1
    else 0
  end as lable_h5_2avg,



  price_4avg as lable_price_4avg,
  price_2avg as lable_price_2avg,

  h1_price_4avg as lable_h1_price_4avg,
  h1_price_2avg as lable_h1_price_2avg,

  h1_price_4avg-price_4avg as lable_h1_price_4avg_gap,
  h1_price_2avg-price_2avg as lable_h1_price_2avg_gap,





  [close] as lable_close_h0,
  [open] as lable_open_h0,
  high as lable_high_h0,
  low as lable_low_h0,

  h1_close as lable_close_h1,
  h1_open as lable_open_h1,
  h1_high as lable_high_h1,
  h1_low as lable_low_h1,

  h2_close as lable_close_h2,
  h2_open as lable_open_h2,
  h2_high as lable_high_h2,
  h2_low as lable_low_h2,

  h3_close as lable_close_h3,
  h3_open as lable_open_h3,
  h3_high as lable_high_h3,
  h3_low as lable_low_h3,

  h4_close as lable_close_h4,
  h4_open as lable_open_h4,
  h4_high as lable_high_h4,
  h4_low as lable_low_h4,

  h5_close as lable_close_h5,
  h5_open as lable_open_h5,
  h5_high as lable_high_h5,
  h5_low as lable_low_h5,

  h6_close as lable_close_h6,
  h6_open as lable_open_h6,
  h6_high as lable_high_h6,
  h6_low as lable_low_h6

into adm.h1_lable
from adm.h1_lable_base

;