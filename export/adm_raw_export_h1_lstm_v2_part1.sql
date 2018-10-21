drop table if exists export.adm_raw_export_h1_lstm_v2_part1;
select
-- top 100
cast(convert(varchar(10),a.pricedate,120)+' '+convert(varchar(8),a.pricetime,108) as datetime) as pricedatetime,
[open],
high,
low,
[close],
volume,
macd_main,
macd_signal,
rsi,
kdj_main,
kdj_signal,
adx_main,
adx_plusdi,
adx_minusdi,
ma_18,
ma_36,
ma_56,
mfi,
sar,
cci,
wpr,
boll_main,
boll_upper,
boll_lower,
price_4avg,
price_2avg
into export.adm_raw_export_h1_lstm_v2_part1
from ods.rawdata_h1 a

where   year(a.pricedate)<=2017
order by a.pricedate,a.pricetime
;