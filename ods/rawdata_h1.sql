
drop TABLE IF EXISTS ods.rawdata_h1;
select
  currency,
  cast(datetime as DATE) as pricedate,
  cast(datetime as TIME) as pricetime,

  cast([open] as DOUBLE PRECISION) as "open",
  cast(high as DOUBLE PRECISION) as high,
  cast(low as DOUBLE PRECISION) as low,
  cast([close] as DOUBLE PRECISION) as "close",
  cast(vol as BIGINT) as volume,
  cast(macd_main as DOUBLE PRECISION) as macd_main,
  cast(macd_signal as DOUBLE PRECISION) as macd_signal,
  cast(rsi as DOUBLE PRECISION) as rsi,
  cast(kdj_main as DOUBLE PRECISION) as kdj_main,
  cast(kdj_signal as DOUBLE PRECISION) as kdj_signal,
  cast(adx_main as DOUBLE PRECISION) as adx_main,
  cast(adx_plusdi as DOUBLE PRECISION) as adx_plusdi,
  cast(adx_minusdi as DOUBLE PRECISION) as adx_minusdi,
  cast(ma_18 as DOUBLE PRECISION) as ma_18,
  cast(ma_36 as DOUBLE PRECISION) as ma_36,
  cast(ma_56 as DOUBLE PRECISION) as ma_56,
  cast(mfi as DOUBLE PRECISION) as mfi,
  cast(sar as DOUBLE PRECISION) as sar,
  cast(cci as DOUBLE PRECISION) as cci,
  cast(wpr as DOUBLE PRECISION) as wpr,
  cast(boll_main as DOUBLE PRECISION) as boll_main,
  cast(boll_upper as DOUBLE PRECISION) as boll_upper,
  cast(boll_lower as DOUBLE PRECISION) as boll_lower,
  (cast([open] as DOUBLE PRECISION)+cast(high as DOUBLE PRECISION)+cast(low as DOUBLE PRECISION)+cast([close] as DOUBLE PRECISION))/4 as "price_4avg",
  (cast([open] as DOUBLE PRECISION)+cast([close] as DOUBLE PRECISION))/2 as "price_2avg"

into ods.rawdata_h1
from (
    SELECT
      [currency]
      ,[datetime]
      ,max([open]) as "open"
      ,max([high]) as high
      ,max([low]) as low
      ,max([close]) as "close"
      ,max([vol]) as vol
      ,max([macd_main]) as macd_main
      ,max([macd_signal]) as macd_signal
      ,max([rsi]) as rsi
      ,max([kdj_main]) as kdj_main
      ,max([kdj_signal]) as kdj_signal
      ,max([adx_main]) as adx_main
      ,max([adx_plusdi]) as adx_plusdi
      ,max([adx_minusdi]) as adx_minusdi
      ,max([ma_18]) as ma_18
      ,max([ma_36]) as ma_36
      ,max([ma_56]) as ma_56
      ,max([mfi]) as mfi
      ,max([sar]) as sar
      ,max([cci]) as cci
      ,max([wpr]) as wpr
      ,max([boll_main]) as boll_main
      ,max([boll_upper]) as boll_upper
      ,max([boll_lower]) as boll_lower
  FROM [ods].[txt_h1]
  group by
      [currency]
      ,[datetime]
    ) t
--where datepart(WEEKDAY,cast(datetime as DATE)) in (2,3,4,5,6)

;