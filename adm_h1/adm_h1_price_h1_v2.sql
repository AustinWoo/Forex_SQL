
drop table if exists adm.h1_price_h1_v2;

select

--  top 100

--  t0.currency,
  t0.pricedate,
  t0.pricetime,

  1000*(t47.price/t0.price-1) as t1,
  1000*(t46.price/t0.price-1) as t2,
  1000*(t45.price/t0.price-1) as t3,
  1000*(t44.price/t0.price-1) as t4,
  1000*(t43.price/t0.price-1) as t5,
  1000*(t42.price/t0.price-1) as t6,
  1000*(t41.price/t0.price-1) as t7,
  1000*(t40.price/t0.price-1) as t8,
  1000*(t39.price/t0.price-1) as t9,
  1000*(t38.price/t0.price-1) as t10,
  1000*(t37.price/t0.price-1) as t11,
  1000*(t36.price/t0.price-1) as t12,
  1000*(t35.price/t0.price-1) as t13,
  1000*(t34.price/t0.price-1) as t14,
  1000*(t33.price/t0.price-1) as t15,
  1000*(t32.price/t0.price-1) as t16,
  1000*(t31.price/t0.price-1) as t17,
  1000*(t30.price/t0.price-1) as t18,
  1000*(t29.price/t0.price-1) as t19,
  1000*(t28.price/t0.price-1) as t20,
  1000*(t27.price/t0.price-1) as t21,
  1000*(t26.price/t0.price-1) as t22,
  1000*(t25.price/t0.price-1) as t23,

  1000*(t24.price/t0.price-1) as t24,
  1000*(t23.price/t0.price-1) as t25,
  1000*(t22.price/t0.price-1) as t26,
  1000*(t21.price/t0.price-1) as t27,
  1000*(t20.price/t0.price-1) as t28,
  1000*(t19.price/t0.price-1) as t29,
  1000*(t18.price/t0.price-1) as t30,
  1000*(t17.price/t0.price-1) as t31,
  1000*(t16.price/t0.price-1) as t32,
  1000*(t15.price/t0.price-1) as t33,
  1000*(t14.price/t0.price-1) as t34,
  1000*(t13.price/t0.price-1) as t35,
  1000*(t12.price/t0.price-1) as t36,
  1000*(t11.price/t0.price-1) as t37,
  1000*(t10.price/t0.price-1) as t38,
  1000*(t9.price/t0.price-1) as t39,
  1000*(t8.price/t0.price-1) as t40,
  1000*(t7.price/t0.price-1) as t41,
  1000*(t6.price/t0.price-1) as t42,
  1000*(t5.price/t0.price-1) as t43,
  1000*(t4.price/t0.price-1) as t44,
  1000*(t3.price/t0.price-1) as t45,
  1000*(t2.price/t0.price-1) as t46,
  1000*(t1.price/t0.price-1) as t47,

  1000*(t0.price/t0.price-1) as t48,

  case
    when t01.price>t0.price then 1
    else 0
  end as lable01,
  case
    when t02.price>t0.price then 1
    else 0
  end as lable02,
  case
    when t03.price>t0.price then 1
    else 0
  end as lable03,
  case
    when t04.price>t0.price then 1
    else 0
  end as lable04,
  case
    when t05.price>t0.price then 1
    else 0
  end as t05

into adm.h1_price_h1_v2

from forex.dwd_price_h1 t0
  left outer join forex.dwd_price_h1 t1 on t0.currency=t1.currency and t0.r=t1.r+1
  left outer join forex.dwd_price_h1 t2 on t0.currency=t2.currency and t0.r=t2.r+2
  left outer join forex.dwd_price_h1 t3 on t0.currency=t3.currency and t0.r=t3.r+3
  left outer join forex.dwd_price_h1 t4 on t0.currency=t4.currency and t0.r=t4.r+4
  left outer join forex.dwd_price_h1 t5 on t0.currency=t5.currency and t0.r=t5.r+5
  left outer join forex.dwd_price_h1 t6 on t0.currency=t6.currency and t0.r=t6.r+6
  left outer join forex.dwd_price_h1 t7 on t0.currency=t7.currency and t0.r=t7.r+7
  left outer join forex.dwd_price_h1 t8 on t0.currency=t8.currency and t0.r=t8.r+8
  left outer join forex.dwd_price_h1 t9 on t0.currency=t9.currency and t0.r=t9.r+9
  left outer join forex.dwd_price_h1 t10 on t0.currency=t10.currency and t0.r=t10.r+10
  left outer join forex.dwd_price_h1 t11 on t0.currency=t11.currency and t0.r=t11.r+11
  left outer join forex.dwd_price_h1 t12 on t0.currency=t12.currency and t0.r=t12.r+12
  left outer join forex.dwd_price_h1 t13 on t0.currency=t13.currency and t0.r=t13.r+13
  left outer join forex.dwd_price_h1 t14 on t0.currency=t14.currency and t0.r=t14.r+14
  left outer join forex.dwd_price_h1 t15 on t0.currency=t15.currency and t0.r=t15.r+15
  left outer join forex.dwd_price_h1 t16 on t0.currency=t16.currency and t0.r=t16.r+16
  left outer join forex.dwd_price_h1 t17 on t0.currency=t17.currency and t0.r=t17.r+17
  left outer join forex.dwd_price_h1 t18 on t0.currency=t18.currency and t0.r=t18.r+18
  left outer join forex.dwd_price_h1 t19 on t0.currency=t19.currency and t0.r=t19.r+19
  left outer join forex.dwd_price_h1 t20 on t0.currency=t20.currency and t0.r=t20.r+20
  left outer join forex.dwd_price_h1 t21 on t0.currency=t21.currency and t0.r=t21.r+21
  left outer join forex.dwd_price_h1 t22 on t0.currency=t22.currency and t0.r=t22.r+22
  left outer join forex.dwd_price_h1 t23 on t0.currency=t23.currency and t0.r=t23.r+23
  left outer join forex.dwd_price_h1 t24 on t0.currency=t24.currency and t0.r=t24.r+24

  left outer join forex.dwd_price_h1 t25 on t0.currency=t25.currency and t0.r=t25.r+25
  left outer join forex.dwd_price_h1 t26 on t0.currency=t26.currency and t0.r=t26.r+26
  left outer join forex.dwd_price_h1 t27 on t0.currency=t27.currency and t0.r=t27.r+27
  left outer join forex.dwd_price_h1 t28 on t0.currency=t28.currency and t0.r=t28.r+28
  left outer join forex.dwd_price_h1 t29 on t0.currency=t29.currency and t0.r=t29.r+29
  left outer join forex.dwd_price_h1 t30 on t0.currency=t30.currency and t0.r=t30.r+30
  left outer join forex.dwd_price_h1 t31 on t0.currency=t31.currency and t0.r=t31.r+31
  left outer join forex.dwd_price_h1 t32 on t0.currency=t32.currency and t0.r=t32.r+32
  left outer join forex.dwd_price_h1 t33 on t0.currency=t33.currency and t0.r=t33.r+33
  left outer join forex.dwd_price_h1 t34 on t0.currency=t34.currency and t0.r=t34.r+34
  left outer join forex.dwd_price_h1 t35 on t0.currency=t35.currency and t0.r=t35.r+35
  left outer join forex.dwd_price_h1 t36 on t0.currency=t36.currency and t0.r=t36.r+36
  left outer join forex.dwd_price_h1 t37 on t0.currency=t37.currency and t0.r=t37.r+37
  left outer join forex.dwd_price_h1 t38 on t0.currency=t38.currency and t0.r=t38.r+38
  left outer join forex.dwd_price_h1 t39 on t0.currency=t39.currency and t0.r=t39.r+39
  left outer join forex.dwd_price_h1 t40 on t0.currency=t40.currency and t0.r=t40.r+40
  left outer join forex.dwd_price_h1 t41 on t0.currency=t41.currency and t0.r=t41.r+41
  left outer join forex.dwd_price_h1 t42 on t0.currency=t42.currency and t0.r=t42.r+42
  left outer join forex.dwd_price_h1 t43 on t0.currency=t43.currency and t0.r=t43.r+43
  left outer join forex.dwd_price_h1 t44 on t0.currency=t44.currency and t0.r=t44.r+44
  left outer join forex.dwd_price_h1 t45 on t0.currency=t45.currency and t0.r=t45.r+45
  left outer join forex.dwd_price_h1 t46 on t0.currency=t46.currency and t0.r=t46.r+46
  left outer join forex.dwd_price_h1 t47 on t0.currency=t47.currency and t0.r=t47.r+47


  left outer join forex.dwd_price_h1 t01 on t0.currency=t01.currency and t0.r=t01.r-1
  left outer join forex.dwd_price_h1 t02 on t0.currency=t02.currency and t0.r=t02.r-2
  left outer join forex.dwd_price_h1 t03 on t0.currency=t03.currency and t0.r=t03.r-3
  left outer join forex.dwd_price_h1 t04 on t0.currency=t04.currency and t0.r=t04.r-4
  left outer join forex.dwd_price_h1 t05 on t0.currency=t05.currency and t0.r=t05.r-5

where t0.currency='EURUSD'

order by t0.pricedate,t1.pricetime

;