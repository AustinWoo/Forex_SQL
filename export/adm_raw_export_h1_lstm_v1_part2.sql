drop table if exists export.adm_raw_export_h1_lstm_v1_part2;
select
--  top 100
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
  ma_18,
  ma_36,
  ma_56,
  price_2avg,
  lable_h1_price_2avg
into export.adm_raw_export_h1_lstm_v1_part2
from ods.rawdata_h1 a
    inner join adm.h1_lable b
      on a.currency=b.currency and
         a.pricedate=b.pricedate and
         a.pricetime=b.pricetime
where   year(a.pricedate)=2018
order by a.pricedate,a.pricetime
;