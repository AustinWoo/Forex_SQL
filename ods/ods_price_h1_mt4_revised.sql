

drop TABLE IF EXISTS forex.ods_price_h1_mt4_revised;

select

  currency,
  cast(dateadd(HH,-4,cast(pricedate as datetime)+cast(pricetime as datetime)) as date) as pricedate,
  cast(dateadd(HH,-4,cast(pricedate as datetime)+cast(pricetime as datetime)) as time) as pricetime,
  openbid,
  highbid,
  lowbid,
  closebid,
  openask,
  highask,
  lowask,
  closeask,
  totalticks
into forex.ods_price_h1_mt4_revised
from forex.ods_price_h1_mt4
--where year(pricedate)=2010;