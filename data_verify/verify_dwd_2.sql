select
      'dwd_price_closebid_d1_trend' as t,
       pricedate,
       datepart(WEEKDAY,pricedate) as w,
       count(1) as r
from forex.dwd_price_closebid_d1_trend
where year(pricedate)=2018
group by
        pricedate,
       datepart(WEEKDAY,pricedate)
union all
select
      'dwd_price_closebid_h1_trend' as t,
       pricedate,
       datepart(WEEKDAY,pricedate) as w,
       count(1) as r
from forex.dwd_price_closebid_h1_trend
where year(pricedate)=2018
group by
        pricedate,
       datepart(WEEKDAY,pricedate)