select
      'dwd_price_bid_d1' as t,
       pricedate,
       datepart(WEEKDAY,pricedate) as w,
       count(1) as r
from forex.dwd_price_bid_d1
where year(pricedate)=2018
group by
        pricedate,
       datepart(WEEKDAY,pricedate)
union all
select
      'dwd_price_bid_h1' as t,
       pricedate,
       datepart(WEEKDAY,pricedate) as w,
       count(1) as r
from forex.dwd_price_bid_h1
where year(pricedate)=2018
group by
        pricedate,
       datepart(WEEKDAY,pricedate)