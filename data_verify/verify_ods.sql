select
    'rawdata_h1' as t,
      pricedate,
       datepart(WEEKDAY,pricedate) as w,
       sum(volume) as volume
from ods.rawdata_h1
where year(pricedate)=2018 --and month(pricedate)=1 and currency='EURUSD'
group by pricedate,
       datepart(WEEKDAY,pricedate)
--order by pricedate


union all
select
  'rawdata_d1' as t,
       pricedate,
--       pricetime,
       datepart(WEEKDAY,pricedate) as w,
       volume
from ods.rawdata_d1
where year(pricedate)=2018 --and month(pricedate)=1
--order by pricedate

;