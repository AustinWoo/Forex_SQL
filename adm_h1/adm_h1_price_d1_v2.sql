
drop table if exists adm.h1_price_d1_v2;

select
  a.currency,
  a.pricedate,
  a.pricetime,

  1000*(t24.price/t0.price-1) as t1,
  1000*(t23.price/t0.price-1) as t2,
  1000*(t22.price/t0.price-1) as t3,
  1000*(t21.price/t0.price-1) as t4,
  1000*(t20.price/t0.price-1) as t5,
  1000*(t19.price/t0.price-1) as t6,
  1000*(t18.price/t0.price-1) as t7,
  1000*(t17.price/t0.price-1) as t8,
  1000*(t16.price/t0.price-1) as t9,
  1000*(t15.price/t0.price-1) as t10,
  1000*(t14.price/t0.price-1) as t11,
  1000*(t13.price/t0.price-1) as t12,
  1000*(t12.price/t0.price-1) as t13,
  1000*(t11.price/t0.price-1) as t14,
  1000*(t10.price/t0.price-1) as t15,
  1000*(t9.price/t0.price-1) as t16,
  1000*(t8.price/t0.price-1) as t17,
  1000*(t7.price/t0.price-1) as t18,
  1000*(t6.price/t0.price-1) as t19,
  1000*(t5.price/t0.price-1) as t20,
  1000*(t4.price/t0.price-1) as t21,
  1000*(t3.price/t0.price-1) as t22,
  1000*(t2.price/t0.price-1) as t23,
  1000*(t1.price/t0.price-1) as t24,

  1000*(t0.price/t0.price-1) as t25,

--  1000*(t26.price/t0.price-1) as t26,
--  1000*(t27.price/t0.price-1) as t27,
--  1000*(t28.price/t0.price-1) as t28,
--  1000*(t29.price/t0.price-1) as t29,
--  1000*(t30.price/t0.price-1) as t30

  case
    when t26.price>t0.price then 1
    else 0
  end as lable01,
  case
    when t27.price>t0.price then 1
    else 0
  end as lable02,
  case
    when t28.price>t0.price then 1
    else 0
  end as lable03,
  case
    when t29.price>t0.price then 1
    else 0
  end as lable04,
  case
    when t30.price>t0.price then 1
    else 0
  end as lable05


into adm.h1_price_d1_v2

from forex.dwd_price_h1_trend a
  left outer join forex.dwd_price_d1_trend                                    --day 0
    b on a.currency=b.currency and a.pricedate=b.pricedate
  left outer join forex.dwd_price_d1 t0 on b.currency=t0.currency and b.r = t0.r+1     --day -1
  left outer join forex.dwd_price_d1 t1 on t0.currency=t1.currency and t0.r=t1.r+1
  left outer join forex.dwd_price_d1 t2 on t0.currency=t2.currency and t0.r=t2.r+2
  left outer join forex.dwd_price_d1 t3 on t0.currency=t3.currency and t0.r=t3.r+3
  left outer join forex.dwd_price_d1 t4 on t0.currency=t4.currency and t0.r=t4.r+4
  left outer join forex.dwd_price_d1 t5 on t0.currency=t5.currency and t0.r=t5.r+5
  left outer join forex.dwd_price_d1 t6 on t0.currency=t6.currency and t0.r=t6.r+6
  left outer join forex.dwd_price_d1 t7 on t0.currency=t7.currency and t0.r=t7.r+7
  left outer join forex.dwd_price_d1 t8 on t0.currency=t8.currency and t0.r=t8.r+8
  left outer join forex.dwd_price_d1 t9 on t0.currency=t9.currency and t0.r=t9.r+9
  left outer join forex.dwd_price_d1 t10 on t0.currency=t10.currency and t0.r=t10.r+10
  left outer join forex.dwd_price_d1 t11 on t0.currency=t11.currency and t0.r=t11.r+11
  left outer join forex.dwd_price_d1 t12 on t0.currency=t12.currency and t0.r=t12.r+12
  left outer join forex.dwd_price_d1 t13 on t0.currency=t13.currency and t0.r=t13.r+13
  left outer join forex.dwd_price_d1 t14 on t0.currency=t14.currency and t0.r=t14.r+14
  left outer join forex.dwd_price_d1 t15 on t0.currency=t15.currency and t0.r=t15.r+15
  left outer join forex.dwd_price_d1 t16 on t0.currency=t16.currency and t0.r=t16.r+16
  left outer join forex.dwd_price_d1 t17 on t0.currency=t17.currency and t0.r=t17.r+17
  left outer join forex.dwd_price_d1 t18 on t0.currency=t18.currency and t0.r=t18.r+18
  left outer join forex.dwd_price_d1 t19 on t0.currency=t19.currency and t0.r=t19.r+19
  left outer join forex.dwd_price_d1 t20 on t0.currency=t20.currency and t0.r=t20.r+20
  left outer join forex.dwd_price_d1 t21 on t0.currency=t21.currency and t0.r=t21.r+21
  left outer join forex.dwd_price_d1 t22 on t0.currency=t22.currency and t0.r=t22.r+22
  left outer join forex.dwd_price_d1 t23 on t0.currency=t23.currency and t0.r=t23.r+23
  left outer join forex.dwd_price_d1 t24 on t0.currency=t24.currency and t0.r=t24.r+24


  left outer join forex.dwd_price_d1 t26 on t0.currency=t26.currency and t0.r=t26.r-1
  left outer join forex.dwd_price_d1 t27 on t0.currency=t27.currency and t0.r=t27.r-2
  left outer join forex.dwd_price_d1 t28 on t0.currency=t28.currency and t0.r=t28.r-3
  left outer join forex.dwd_price_d1 t29 on t0.currency=t29.currency and t0.r=t29.r-4
  left outer join forex.dwd_price_d1 t30 on t0.currency=t30.currency and t0.r=t30.r-5

where t0.currency='EURUSD'

--order by t0.pricedate
;