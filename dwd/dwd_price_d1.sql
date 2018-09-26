
drop TABLE IF EXISTS forex.dwd_price_d1;
SELECT
      currency,
      pricedate,
      pricetime,
      "open",
      "close",
      high,
      low,
      "open"-"close" as openclose,
      high-low as highlow,
        price_4avg,
        price_2avg,
        [price_2avg] as price,
      CASE
        when "open">"close" then high - "open"
        when "open"<"close" then high - [close]
        when "open"="close" then high - [open]
      END as upbar,
      CASE
        when [open]>[close] then [close] - low
        when [open]<[close] then [open] - low
        when [open]=[close] then [close] - low
      END as downbar,
      volume,



  --新添加
      macd_main,
      macd_signal,
      rsi,
      kdj_main,
      kdj_signal,
      adx_main,
      adx_plusdi,
      adx_minusdi,
      [price_2avg] - ma_18 as ma_18,
      [price_2avg] - ma_36 as ma_36,
      [price_2avg] - ma_56 as ma_56,
      mfi,
      [price_2avg] - sar as sar,
      cci,
      wpr,
      [price_2avg] - boll_main as boll_main,
      [price_2avg] - boll_upper as boll_upper,
      [price_2avg] - boll_lower as boll_lower,


      row_number() OVER (PARTITION BY currency ORDER BY pricedate, pricetime ) AS r

INTO forex.dwd_price_d1
FROM ods.rawdata_d1 as a where currency='EURUSD'
;