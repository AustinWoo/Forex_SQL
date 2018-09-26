
drop table IF EXISTS adm.h1_price_ki_d1;

select
  a.currency,
  a.pricedate,
  a.pricetime,

  d1.macd_main as h1_macd1_d1,
  d2.macd_main as h1_macd1_d2,
  d3.macd_main as h1_macd1_d3,
  d4.macd_main as h1_macd1_d4,
  d5.macd_main as h1_macd1_d5,
  d6.macd_main as h1_macd1_d6,
  d7.macd_main as h1_macd1_d7,
  d8.macd_main as h1_macd1_d8,
  d9.macd_main as h1_macd1_d9,
  d10.macd_main as h1_macd1_d10,
  d11.macd_main as h1_macd1_d11,
  d12.macd_main as h1_macd1_d12,
  d13.macd_main as h1_macd1_d13,
  d14.macd_main as h1_macd1_d14,

  d1.macd_signal as h1_macd2_d1,
  d2.macd_signal as h1_macd2_d2,
  d3.macd_signal as h1_macd2_d3,
  d4.macd_signal as h1_macd2_d4,
  d5.macd_signal as h1_macd2_d5,
  d6.macd_signal as h1_macd2_d6,
  d7.macd_signal as h1_macd2_d7,
  d8.macd_signal as h1_macd2_d8,
  d9.macd_signal as h1_macd2_d9,
  d10.macd_signal as h1_macd2_d10,
  d11.macd_signal as h1_macd2_d11,
  d12.macd_signal as h1_macd2_d12,
  d13.macd_signal as h1_macd2_d13,
  d14.macd_signal as h1_macd2_d14,

  d1.rsi as h1_rsi_d1,
  d2.rsi as h1_rsi_d2,
  d3.rsi as h1_rsi_d3,
  d4.rsi as h1_rsi_d4,
  d5.rsi as h1_rsi_d5,
  d6.rsi as h1_rsi_d6,
  d7.rsi as h1_rsi_d7,
  d8.rsi as h1_rsi_d8,
  d9.rsi as h1_rsi_d9,
  d10.rsi as h1_rsi_d10,
  d11.rsi as h1_rsi_d11,
  d12.rsi as h1_rsi_d12,
  d13.rsi as h1_rsi_d13,
  d14.rsi as h1_rsi_d14,

  d1.kdj_main as h1_kdj1_d1,
  d2.kdj_main as h1_kdj1_d2,
  d3.kdj_main as h1_kdj1_d3,
  d4.kdj_main as h1_kdj1_d4,
  d5.kdj_main as h1_kdj1_d5,
  d6.kdj_main as h1_kdj1_d6,
  d7.kdj_main as h1_kdj1_d7,
  d8.kdj_main as h1_kdj1_d8,
  d9.kdj_main as h1_kdj1_d9,
  d10.kdj_main as h1_kdj1_d10,
  d11.kdj_main as h1_kdj1_d11,
  d12.kdj_main as h1_kdj1_d12,
  d13.kdj_main as h1_kdj1_d13,
  d14.kdj_main as h1_kdj1_d14,

  d1.kdj_signal as h1_kdj2_d1,
  d2.kdj_signal as h1_kdj2_d2,
  d3.kdj_signal as h1_kdj2_d3,
  d4.kdj_signal as h1_kdj2_d4,
  d5.kdj_signal as h1_kdj2_d5,
  d6.kdj_signal as h1_kdj2_d6,
  d7.kdj_signal as h1_kdj2_d7,
  d8.kdj_signal as h1_kdj2_d8,
  d9.kdj_signal as h1_kdj2_d9,
  d10.kdj_signal as h1_kdj2_d10,
  d11.kdj_signal as h1_kdj2_d11,
  d12.kdj_signal as h1_kdj2_d12,
  d13.kdj_signal as h1_kdj2_d13,
  d14.kdj_signal as h1_kdj2_d14,

  d1.adx_main as h1_adx1_d1,
  d2.adx_main as h1_adx1_d2,
  d3.adx_main as h1_adx1_d3,
  d4.adx_main as h1_adx1_d4,
  d5.adx_main as h1_adx1_d5,
  d6.adx_main as h1_adx1_d6,
  d7.adx_main as h1_adx1_d7,
  d8.adx_main as h1_adx1_d8,
  d9.adx_main as h1_adx1_d9,
  d10.adx_main as h1_adx1_d10,
  d11.adx_main as h1_adx1_d11,
  d12.adx_main as h1_adx1_d12,
  d13.adx_main as h1_adx1_d13,
  d14.adx_main as h1_adx1_d14,

  d1.adx_plusdi as h1_adx2_d1,
  d2.adx_plusdi as h1_adx2_d2,
  d3.adx_plusdi as h1_adx2_d3,
  d4.adx_plusdi as h1_adx2_d4,
  d5.adx_plusdi as h1_adx2_d5,
  d6.adx_plusdi as h1_adx2_d6,
  d7.adx_plusdi as h1_adx2_d7,
  d8.adx_plusdi as h1_adx2_d8,
  d9.adx_plusdi as h1_adx2_d9,
  d10.adx_plusdi as h1_adx2_d10,
  d11.adx_plusdi as h1_adx2_d11,
  d12.adx_plusdi as h1_adx2_d12,
  d13.adx_plusdi as h1_adx2_d13,
  d14.adx_plusdi as h1_adx2_d14,

  d1.adx_minusdi as h1_adx3_d1,
  d2.adx_minusdi as h1_adx3_d2,
  d3.adx_minusdi as h1_adx3_d3,
  d4.adx_minusdi as h1_adx3_d4,
  d5.adx_minusdi as h1_adx3_d5,
  d6.adx_minusdi as h1_adx3_d6,
  d7.adx_minusdi as h1_adx3_d7,
  d8.adx_minusdi as h1_adx3_d8,
  d9.adx_minusdi as h1_adx3_d9,
  d10.adx_minusdi as h1_adx3_d10,
  d11.adx_minusdi as h1_adx3_d11,
  d12.adx_minusdi as h1_adx3_d12,
  d13.adx_minusdi as h1_adx3_d13,
  d14.adx_minusdi as h1_adx3_d14,

  d1.ma_18 as h1_ma1_d1,
  d2.ma_18 as h1_ma1_d2,
  d3.ma_18 as h1_ma1_d3,
  d4.ma_18 as h1_ma1_d4,
  d5.ma_18 as h1_ma1_d5,
  d6.ma_18 as h1_ma1_d6,
  d7.ma_18 as h1_ma1_d7,
  d8.ma_18 as h1_ma1_d8,
  d9.ma_18 as h1_ma1_d9,
  d10.ma_18 as h1_ma1_d10,
  d11.ma_18 as h1_ma1_d11,
  d12.ma_18 as h1_ma1_d12,
  d13.ma_18 as h1_ma1_d13,
  d14.ma_18 as h1_ma1_d14,

  d1.ma_36 as h1_ma2_d1,
  d2.ma_36 as h1_ma2_d2,
  d3.ma_36 as h1_ma2_d3,
  d4.ma_36 as h1_ma2_d4,
  d5.ma_36 as h1_ma2_d5,
  d6.ma_36 as h1_ma2_d6,
  d7.ma_36 as h1_ma2_d7,
  d8.ma_36 as h1_ma2_d8,
  d9.ma_36 as h1_ma2_d9,
  d10.ma_36 as h1_ma2_d10,
  d11.ma_36 as h1_ma2_d11,
  d12.ma_36 as h1_ma2_d12,
  d13.ma_36 as h1_ma2_d13,
  d14.ma_36 as h1_ma2_d14,

  d1.ma_56 as h1_ma3_d1,
  d2.ma_56 as h1_ma3_d2,
  d3.ma_56 as h1_ma3_d3,
  d4.ma_56 as h1_ma3_d4,
  d5.ma_56 as h1_ma3_d5,
  d6.ma_56 as h1_ma3_d6,
  d7.ma_56 as h1_ma3_d7,
  d8.ma_56 as h1_ma3_d8,
  d9.ma_56 as h1_ma3_d9,
  d10.ma_56 as h1_ma3_d10,
  d11.ma_56 as h1_ma3_d11,
  d12.ma_56 as h1_ma3_d12,
  d13.ma_56 as h1_ma3_d13,
  d14.ma_56 as h1_ma3_d14,

  d1.mfi as h1_mfi_d1,
  d2.mfi as h1_mfi_d2,
  d3.mfi as h1_mfi_d3,
  d4.mfi as h1_mfi_d4,
  d5.mfi as h1_mfi_d5,
  d6.mfi as h1_mfi_d6,
  d7.mfi as h1_mfi_d7,
  d8.mfi as h1_mfi_d8,
  d9.mfi as h1_mfi_d9,
  d10.mfi as h1_mfi_d10,
  d11.mfi as h1_mfi_d11,
  d12.mfi as h1_mfi_d12,
  d13.mfi as h1_mfi_d13,
  d14.mfi as h1_mfi_d14,

  d1.sar as h1_sar_d1,
  d2.sar as h1_sar_d2,
  d3.sar as h1_sar_d3,
  d4.sar as h1_sar_d4,
  d5.sar as h1_sar_d5,
  d6.sar as h1_sar_d6,
  d7.sar as h1_sar_d7,
  d8.sar as h1_sar_d8,
  d9.sar as h1_sar_d9,
  d10.sar as h1_sar_d10,
  d11.sar as h1_sar_d11,
  d12.sar as h1_sar_d12,
  d13.sar as h1_sar_d13,
  d14.sar as h1_sar_d14,

  d1.cci as h1_cci_d1,
  d2.cci as h1_cci_d2,
  d3.cci as h1_cci_d3,
  d4.cci as h1_cci_d4,
  d5.cci as h1_cci_d5,
  d6.cci as h1_cci_d6,
  d7.cci as h1_cci_d7,
  d8.cci as h1_cci_d8,
  d9.cci as h1_cci_d9,
  d10.cci as h1_cci_d10,
  d11.cci as h1_cci_d11,
  d12.cci as h1_cci_d12,
  d13.cci as h1_cci_d13,
  d14.cci as h1_cci_d14,

  d1.wpr as h1_wpr_d1,
  d2.wpr as h1_wpr_d2,
  d3.wpr as h1_wpr_d3,
  d4.wpr as h1_wpr_d4,
  d5.wpr as h1_wpr_d5,
  d6.wpr as h1_wpr_d6,
  d7.wpr as h1_wpr_d7,
  d8.wpr as h1_wpr_d8,
  d9.wpr as h1_wpr_d9,
  d10.wpr as h1_wpr_d10,
  d11.wpr as h1_wpr_d11,
  d12.wpr as h1_wpr_d12,
  d13.wpr as h1_wpr_d13,
  d14.wpr as h1_wpr_d14,

  d1.boll_main as h1_boll1_d1,
  d2.boll_main as h1_boll1_d2,
  d3.boll_main as h1_boll1_d3,
  d4.boll_main as h1_boll1_d4,
  d5.boll_main as h1_boll1_d5,
  d6.boll_main as h1_boll1_d6,
  d7.boll_main as h1_boll1_d7,
  d8.boll_main as h1_boll1_d8,
  d9.boll_main as h1_boll1_d9,
  d10.boll_main as h1_boll1_d10,
  d11.boll_main as h1_boll1_d11,
  d12.boll_main as h1_boll1_d12,
  d13.boll_main as h1_boll1_d13,
  d14.boll_main as h1_boll1_d14,

  d1.boll_upper as h1_boll2_d1,
  d2.boll_upper as h1_boll2_d2,
  d3.boll_upper as h1_boll2_d3,
  d4.boll_upper as h1_boll2_d4,
  d5.boll_upper as h1_boll2_d5,
  d6.boll_upper as h1_boll2_d6,
  d7.boll_upper as h1_boll2_d7,
  d8.boll_upper as h1_boll2_d8,
  d9.boll_upper as h1_boll2_d9,
  d10.boll_upper as h1_boll2_d10,
  d11.boll_upper as h1_boll2_d11,
  d12.boll_upper as h1_boll2_d12,
  d13.boll_upper as h1_boll2_d13,
  d14.boll_upper as h1_boll2_d14,

  d1.boll_lower as h1_boll3_d1,
  d2.boll_lower as h1_boll3_d2,
  d3.boll_lower as h1_boll3_d3,
  d4.boll_lower as h1_boll3_d4,
  d5.boll_lower as h1_boll3_d5,
  d6.boll_lower as h1_boll3_d6,
  d7.boll_lower as h1_boll3_d7,
  d8.boll_lower as h1_boll3_d8,
  d9.boll_lower as h1_boll3_d9,
  d10.boll_lower as h1_boll3_d10,
  d11.boll_lower as h1_boll3_d11,
  d12.boll_lower as h1_boll3_d12,
  d13.boll_lower as h1_boll3_d13,
  d14.boll_lower as h1_boll3_d14

into adm.h1_price_ki_d1

from forex.dwd_price_h1 a                 --hour -1


  LEFT OUTER JOIN forex.dwd_price_d1 b    --day 0
    on a.currency=b.currency and a.pricedate=b.pricedate
  LEFT OUTER JOIN forex.dwd_price_d1 d1   --day -1
    on b.currency=d1.currency and b.r=d1.r+1
  LEFT OUTER JOIN forex.dwd_price_d1 d2   --day -2
    on b.currency=d2.currency and b.r=d2.r+2
  LEFT OUTER JOIN forex.dwd_price_d1 d3   --day -3
    on b.currency=d3.currency and b.r=d3.r+3
  LEFT OUTER JOIN forex.dwd_price_d1 d4
    on b.currency=d4.currency and b.r=d4.r+4
  LEFT OUTER JOIN forex.dwd_price_d1 d5
    on b.currency=d5.currency and b.r=d5.r+5

   LEFT OUTER JOIN forex.dwd_price_d1 d6
      on b.currency=d6.currency and b.r=d6.r+6
   LEFT OUTER JOIN forex.dwd_price_d1 d7
      on b.currency=d7.currency and b.r=d7.r+7
   LEFT OUTER JOIN forex.dwd_price_d1 d8
      on b.currency=d8.currency and b.r=d8.r+8
   LEFT OUTER JOIN forex.dwd_price_d1 d9
      on b.currency=d9.currency and b.r=d9.r+9
   LEFT OUTER JOIN forex.dwd_price_d1 d10
      on b.currency=d10.currency and b.r=d10.r+10

   LEFT OUTER JOIN forex.dwd_price_d1 d11
      on b.currency=d11.currency and b.r=d11.r+11
   LEFT OUTER JOIN forex.dwd_price_d1 d12
      on b.currency=d12.currency and b.r=d12.r+12
   LEFT OUTER JOIN forex.dwd_price_d1 d13
      on b.currency=d13.currency and b.r=d13.r+13
   LEFT OUTER JOIN forex.dwd_price_d1 d14
      on b.currency=d14.currency and b.r=d14.r+14

  ;