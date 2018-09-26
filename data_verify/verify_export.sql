select
datepart(WEEKDAY,t1.pricedate) as y,
       count(1) as r
from export.adm_raw_export_h1_v13_part1 t1
group by datepart(WEEKDAY,t1.pricedate)