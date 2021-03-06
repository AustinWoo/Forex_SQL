
drop TABLE IF EXISTS adm.h1_price_ki_h1;
select
  h1.currency,
  h1.pricedate,
  h1.pricetime,

  h1.macd_main as h1_macd1_h1,
  h2.macd_main as h1_macd1_h2,
  h3.macd_main as h1_macd1_h3,
  h4.macd_main as h1_macd1_h4,
  h5.macd_main as h1_macd1_h5,
  h6.macd_main as h1_macd1_h6,
  h7.macd_main as h1_macd1_h7,
  h8.macd_main as h1_macd1_h8,
  h9.macd_main as h1_macd1_h9,
  h10.macd_main as h1_macd1_h10,
  h11.macd_main as h1_macd1_h11,
  h12.macd_main as h1_macd1_h12,
  h13.macd_main as h1_macd1_h13,
  h14.macd_main as h1_macd1_h14,
  h15.macd_main as h1_macd1_h15,
  h16.macd_main as h1_macd1_h16,
  h17.macd_main as h1_macd1_h17,
  h18.macd_main as h1_macd1_h18,
  h19.macd_main as h1_macd1_h19,
  h20.macd_main as h1_macd1_h20,
  h21.macd_main as h1_macd1_h21,
  h22.macd_main as h1_macd1_h22,
  h23.macd_main as h1_macd1_h23,
  h24.macd_main as h1_macd1_h24,

  h1.macd_signal as h1_macd2_h1,
  h2.macd_signal as h1_macd2_h2,
  h3.macd_signal as h1_macd2_h3,
  h4.macd_signal as h1_macd2_h4,
  h5.macd_signal as h1_macd2_h5,
  h6.macd_signal as h1_macd2_h6,
  h7.macd_signal as h1_macd2_h7,
  h8.macd_signal as h1_macd2_h8,
  h9.macd_signal as h1_macd2_h9,
  h10.macd_signal as h1_macd2_h10,
  h11.macd_signal as h1_macd2_h11,
  h12.macd_signal as h1_macd2_h12,
  h13.macd_signal as h1_macd2_h13,
  h14.macd_signal as h1_macd2_h14,
  h15.macd_signal as h1_macd2_h15,
  h16.macd_signal as h1_macd2_h16,
  h17.macd_signal as h1_macd2_h17,
  h18.macd_signal as h1_macd2_h18,
  h19.macd_signal as h1_macd2_h19,
  h20.macd_signal as h1_macd2_h20,
  h21.macd_signal as h1_macd2_h21,
  h22.macd_signal as h1_macd2_h22,
  h23.macd_signal as h1_macd2_h23,
  h24.macd_signal as h1_macd2_h24,


  h1.rsi as h1_rsi_h1,
  h2.rsi as h1_rsi_h2,
  h3.rsi as h1_rsi_h3,
  h4.rsi as h1_rsi_h4,
  h5.rsi as h1_rsi_h5,
  h6.rsi as h1_rsi_h6,
  h7.rsi as h1_rsi_h7,
  h8.rsi as h1_rsi_h8,
  h9.rsi as h1_rsi_h9,
  h10.rsi as h1_rsi_h10,
  h11.rsi as h1_rsi_h11,
  h12.rsi as h1_rsi_h12,
  h13.rsi as h1_rsi_h13,
  h14.rsi as h1_rsi_h14,
  h15.rsi as h1_rsi_h15,
  h16.rsi as h1_rsi_h16,
  h17.rsi as h1_rsi_h17,
  h18.rsi as h1_rsi_h18,
  h19.rsi as h1_rsi_h19,
  h20.rsi as h1_rsi_h20,
  h21.rsi as h1_rsi_h21,
  h22.rsi as h1_rsi_h22,
  h23.rsi as h1_rsi_h23,
  h24.rsi as h1_rsi_h24,

  h1.kdj_main as h1_kdj1_h1,
  h2.kdj_main as h1_kdj1_h2,
  h3.kdj_main as h1_kdj1_h3,
  h4.kdj_main as h1_kdj1_h4,
  h5.kdj_main as h1_kdj1_h5,
  h6.kdj_main as h1_kdj1_h6,
  h7.kdj_main as h1_kdj1_h7,
  h8.kdj_main as h1_kdj1_h8,
  h9.kdj_main as h1_kdj1_h9,
  h10.kdj_main as h1_kdj1_h10,
  h11.kdj_main as h1_kdj1_h11,
  h12.kdj_main as h1_kdj1_h12,
  h13.kdj_main as h1_kdj1_h13,
  h14.kdj_main as h1_kdj1_h14,
  h15.kdj_main as h1_kdj1_h15,
  h16.kdj_main as h1_kdj1_h16,
  h17.kdj_main as h1_kdj1_h17,
  h18.kdj_main as h1_kdj1_h18,
  h19.kdj_main as h1_kdj1_h19,
  h20.kdj_main as h1_kdj1_h20,
  h21.kdj_main as h1_kdj1_h21,
  h22.kdj_main as h1_kdj1_h22,
  h23.kdj_main as h1_kdj1_h23,
  h24.kdj_main as h1_kdj1_h24,

  h1.kdj_signal as h1_kdj2_h1,
  h2.kdj_signal as h1_kdj2_h2,
  h3.kdj_signal as h1_kdj2_h3,
  h4.kdj_signal as h1_kdj2_h4,
  h5.kdj_signal as h1_kdj2_h5,
  h6.kdj_signal as h1_kdj2_h6,
  h7.kdj_signal as h1_kdj2_h7,
  h8.kdj_signal as h1_kdj2_h8,
  h9.kdj_signal as h1_kdj2_h9,
  h10.kdj_signal as h1_kdj2_h10,
  h11.kdj_signal as h1_kdj2_h11,
  h12.kdj_signal as h1_kdj2_h12,
  h13.kdj_signal as h1_kdj2_h13,
  h14.kdj_signal as h1_kdj2_h14,
  h15.kdj_signal as h1_kdj2_h15,
  h16.kdj_signal as h1_kdj2_h16,
  h17.kdj_signal as h1_kdj2_h17,
  h18.kdj_signal as h1_kdj2_h18,
  h19.kdj_signal as h1_kdj2_h19,
  h20.kdj_signal as h1_kdj2_h20,
  h21.kdj_signal as h1_kdj2_h21,
  h22.kdj_signal as h1_kdj2_h22,
  h23.kdj_signal as h1_kdj2_h23,
  h24.kdj_signal as h1_kdj2_h24,

  h1.adx_main as h1_adx1_h1,
  h2.adx_main as h1_adx1_h2,
  h3.adx_main as h1_adx1_h3,
  h4.adx_main as h1_adx1_h4,
  h5.adx_main as h1_adx1_h5,
  h6.adx_main as h1_adx1_h6,
  h7.adx_main as h1_adx1_h7,
  h8.adx_main as h1_adx1_h8,
  h9.adx_main as h1_adx1_h9,
  h10.adx_main as h1_adx1_h10,
  h11.adx_main as h1_adx1_h11,
  h12.adx_main as h1_adx1_h12,
  h13.adx_main as h1_adx1_h13,
  h14.adx_main as h1_adx1_h14,
  h15.adx_main as h1_adx1_h15,
  h16.adx_main as h1_adx1_h16,
  h17.adx_main as h1_adx1_h17,
  h18.adx_main as h1_adx1_h18,
  h19.adx_main as h1_adx1_h19,
  h20.adx_main as h1_adx1_h20,
  h21.adx_main as h1_adx1_h21,
  h22.adx_main as h1_adx1_h22,
  h23.adx_main as h1_adx1_h23,
  h24.adx_main as h1_adx1_h24,

  h1.adx_plusdi as h1_adx2_h1,
  h2.adx_plusdi as h1_adx2_h2,
  h3.adx_plusdi as h1_adx2_h3,
  h4.adx_plusdi as h1_adx2_h4,
  h5.adx_plusdi as h1_adx2_h5,
  h6.adx_plusdi as h1_adx2_h6,
  h7.adx_plusdi as h1_adx2_h7,
  h8.adx_plusdi as h1_adx2_h8,
  h9.adx_plusdi as h1_adx2_h9,
  h10.adx_plusdi as h1_adx2_h10,
  h11.adx_plusdi as h1_adx2_h11,
  h12.adx_plusdi as h1_adx2_h12,
  h13.adx_plusdi as h1_adx2_h13,
  h14.adx_plusdi as h1_adx2_h14,
  h15.adx_plusdi as h1_adx2_h15,
  h16.adx_plusdi as h1_adx2_h16,
  h17.adx_plusdi as h1_adx2_h17,
  h18.adx_plusdi as h1_adx2_h18,
  h19.adx_plusdi as h1_adx2_h19,
  h20.adx_plusdi as h1_adx2_h20,
  h21.adx_plusdi as h1_adx2_h21,
  h22.adx_plusdi as h1_adx2_h22,
  h23.adx_plusdi as h1_adx2_h23,
  h24.adx_plusdi as h1_adx2_h24,

  h1.adx_minusdi as h1_adx3_h1,
  h2.adx_minusdi as h1_adx3_h2,
  h3.adx_minusdi as h1_adx3_h3,
  h4.adx_minusdi as h1_adx3_h4,
  h5.adx_minusdi as h1_adx3_h5,
  h6.adx_minusdi as h1_adx3_h6,
  h7.adx_minusdi as h1_adx3_h7,
  h8.adx_minusdi as h1_adx3_h8,
  h9.adx_minusdi as h1_adx3_h9,
  h10.adx_minusdi as h1_adx3_h10,
  h11.adx_minusdi as h1_adx3_h11,
  h12.adx_minusdi as h1_adx3_h12,
  h13.adx_minusdi as h1_adx3_h13,
  h14.adx_minusdi as h1_adx3_h14,
  h15.adx_minusdi as h1_adx3_h15,
  h16.adx_minusdi as h1_adx3_h16,
  h17.adx_minusdi as h1_adx3_h17,
  h18.adx_minusdi as h1_adx3_h18,
  h19.adx_minusdi as h1_adx3_h19,
  h20.adx_minusdi as h1_adx3_h20,
  h21.adx_minusdi as h1_adx3_h21,
  h22.adx_minusdi as h1_adx3_h22,
  h23.adx_minusdi as h1_adx3_h23,
  h24.adx_minusdi as h1_adx3_h24,

  h1.ma_18 as h1_ma1_h1,
  h2.ma_18 as h1_ma1_h2,
  h3.ma_18 as h1_ma1_h3,
  h4.ma_18 as h1_ma1_h4,
  h5.ma_18 as h1_ma1_h5,
  h6.ma_18 as h1_ma1_h6,
  h7.ma_18 as h1_ma1_h7,
  h8.ma_18 as h1_ma1_h8,
  h9.ma_18 as h1_ma1_h9,
  h10.ma_18 as h1_ma1_h10,
  h11.ma_18 as h1_ma1_h11,
  h12.ma_18 as h1_ma1_h12,
  h13.ma_18 as h1_ma1_h13,
  h14.ma_18 as h1_ma1_h14,
  h15.ma_18 as h1_ma1_h15,
  h16.ma_18 as h1_ma1_h16,
  h17.ma_18 as h1_ma1_h17,
  h18.ma_18 as h1_ma1_h18,
  h19.ma_18 as h1_ma1_h19,
  h20.ma_18 as h1_ma1_h20,
  h21.ma_18 as h1_ma1_h21,
  h22.ma_18 as h1_ma1_h22,
  h23.ma_18 as h1_ma1_h23,
  h24.ma_18 as h1_ma1_h24,

  h1.ma_36 as h1_ma2_h1,
  h2.ma_36 as h1_ma2_h2,
  h3.ma_36 as h1_ma2_h3,
  h4.ma_36 as h1_ma2_h4,
  h5.ma_36 as h1_ma2_h5,
  h6.ma_36 as h1_ma2_h6,
  h7.ma_36 as h1_ma2_h7,
  h8.ma_36 as h1_ma2_h8,
  h9.ma_36 as h1_ma2_h9,
  h10.ma_36 as h1_ma2_h10,
  h11.ma_36 as h1_ma2_h11,
  h12.ma_36 as h1_ma2_h12,
  h13.ma_36 as h1_ma2_h13,
  h14.ma_36 as h1_ma2_h14,
  h15.ma_36 as h1_ma2_h15,
  h16.ma_36 as h1_ma2_h16,
  h17.ma_36 as h1_ma2_h17,
  h18.ma_36 as h1_ma2_h18,
  h19.ma_36 as h1_ma2_h19,
  h20.ma_36 as h1_ma2_h20,
  h21.ma_36 as h1_ma2_h21,
  h22.ma_36 as h1_ma2_h22,
  h23.ma_36 as h1_ma2_h23,
  h24.ma_36 as h1_ma2_h24,

  h1.ma_56 as h1_ma3_h1,
  h2.ma_56 as h1_ma3_h2,
  h3.ma_56 as h1_ma3_h3,
  h4.ma_56 as h1_ma3_h4,
  h5.ma_56 as h1_ma3_h5,
  h6.ma_56 as h1_ma3_h6,
  h7.ma_56 as h1_ma3_h7,
  h8.ma_56 as h1_ma3_h8,
  h9.ma_56 as h1_ma3_h9,
  h10.ma_56 as h1_ma3_h10,
  h11.ma_56 as h1_ma3_h11,
  h12.ma_56 as h1_ma3_h12,
  h13.ma_56 as h1_ma3_h13,
  h14.ma_56 as h1_ma3_h14,
  h15.ma_56 as h1_ma3_h15,
  h16.ma_56 as h1_ma3_h16,
  h17.ma_56 as h1_ma3_h17,
  h18.ma_56 as h1_ma3_h18,
  h19.ma_56 as h1_ma3_h19,
  h20.ma_56 as h1_ma3_h20,
  h21.ma_56 as h1_ma3_h21,
  h22.ma_56 as h1_ma3_h22,
  h23.ma_56 as h1_ma3_h23,
  h24.ma_56 as h1_ma3_h24,

  h1.mfi as h1_mfi_h1,
  h2.mfi as h1_mfi_h2,
  h3.mfi as h1_mfi_h3,
  h4.mfi as h1_mfi_h4,
  h5.mfi as h1_mfi_h5,
  h6.mfi as h1_mfi_h6,
  h7.mfi as h1_mfi_h7,
  h8.mfi as h1_mfi_h8,
  h9.mfi as h1_mfi_h9,
  h10.mfi as h1_mfi_h10,
  h11.mfi as h1_mfi_h11,
  h12.mfi as h1_mfi_h12,
  h13.mfi as h1_mfi_h13,
  h14.mfi as h1_mfi_h14,
  h15.mfi as h1_mfi_h15,
  h16.mfi as h1_mfi_h16,
  h17.mfi as h1_mfi_h17,
  h18.mfi as h1_mfi_h18,
  h19.mfi as h1_mfi_h19,
  h20.mfi as h1_mfi_h20,
  h21.mfi as h1_mfi_h21,
  h22.mfi as h1_mfi_h22,
  h23.mfi as h1_mfi_h23,
  h24.mfi as h1_mfi_h24,

  h1.sar as h1_sar_h1,
  h2.sar as h1_sar_h2,
  h3.sar as h1_sar_h3,
  h4.sar as h1_sar_h4,
  h5.sar as h1_sar_h5,
  h6.sar as h1_sar_h6,
  h7.sar as h1_sar_h7,
  h8.sar as h1_sar_h8,
  h9.sar as h1_sar_h9,
  h10.sar as h1_sar_h10,
  h11.sar as h1_sar_h11,
  h12.sar as h1_sar_h12,
  h13.sar as h1_sar_h13,
  h14.sar as h1_sar_h14,
  h15.sar as h1_sar_h15,
  h16.sar as h1_sar_h16,
  h17.sar as h1_sar_h17,
  h18.sar as h1_sar_h18,
  h19.sar as h1_sar_h19,
  h20.sar as h1_sar_h20,
  h21.sar as h1_sar_h21,
  h22.sar as h1_sar_h22,
  h23.sar as h1_sar_h23,
  h24.sar as h1_sar_h24,

  h1.cci as h1_cci_h1,
  h2.cci as h1_cci_h2,
  h3.cci as h1_cci_h3,
  h4.cci as h1_cci_h4,
  h5.cci as h1_cci_h5,
  h6.cci as h1_cci_h6,
  h7.cci as h1_cci_h7,
  h8.cci as h1_cci_h8,
  h9.cci as h1_cci_h9,
  h10.cci as h1_cci_h10,
  h11.cci as h1_cci_h11,
  h12.cci as h1_cci_h12,
  h13.cci as h1_cci_h13,
  h14.cci as h1_cci_h14,
  h15.cci as h1_cci_h15,
  h16.cci as h1_cci_h16,
  h17.cci as h1_cci_h17,
  h18.cci as h1_cci_h18,
  h19.cci as h1_cci_h19,
  h20.cci as h1_cci_h20,
  h21.cci as h1_cci_h21,
  h22.cci as h1_cci_h22,
  h23.cci as h1_cci_h23,
  h24.cci as h1_cci_h24,

  h1.wpr as h1_wpr_h1,
  h2.wpr as h1_wpr_h2,
  h3.wpr as h1_wpr_h3,
  h4.wpr as h1_wpr_h4,
  h5.wpr as h1_wpr_h5,
  h6.wpr as h1_wpr_h6,
  h7.wpr as h1_wpr_h7,
  h8.wpr as h1_wpr_h8,
  h9.wpr as h1_wpr_h9,
  h10.wpr as h1_wpr_h10,
  h11.wpr as h1_wpr_h11,
  h12.wpr as h1_wpr_h12,
  h13.wpr as h1_wpr_h13,
  h14.wpr as h1_wpr_h14,
  h15.wpr as h1_wpr_h15,
  h16.wpr as h1_wpr_h16,
  h17.wpr as h1_wpr_h17,
  h18.wpr as h1_wpr_h18,
  h19.wpr as h1_wpr_h19,
  h20.wpr as h1_wpr_h20,
  h21.wpr as h1_wpr_h21,
  h22.wpr as h1_wpr_h22,
  h23.wpr as h1_wpr_h23,
  h24.wpr as h1_wpr_h24,

  h1.boll_main as h1_boll1_h1,
  h2.boll_main as h1_boll1_h2,
  h3.boll_main as h1_boll1_h3,
  h4.boll_main as h1_boll1_h4,
  h5.boll_main as h1_boll1_h5,
  h6.boll_main as h1_boll1_h6,
  h7.boll_main as h1_boll1_h7,
  h8.boll_main as h1_boll1_h8,
  h9.boll_main as h1_boll1_h9,
  h10.boll_main as h1_boll1_h10,
  h11.boll_main as h1_boll1_h11,
  h12.boll_main as h1_boll1_h12,
  h13.boll_main as h1_boll1_h13,
  h14.boll_main as h1_boll1_h14,
  h15.boll_main as h1_boll1_h15,
  h16.boll_main as h1_boll1_h16,
  h17.boll_main as h1_boll1_h17,
  h18.boll_main as h1_boll1_h18,
  h19.boll_main as h1_boll1_h19,
  h20.boll_main as h1_boll1_h20,
  h21.boll_main as h1_boll1_h21,
  h22.boll_main as h1_boll1_h22,
  h23.boll_main as h1_boll1_h23,
  h24.boll_main as h1_boll1_h24,

  h1.boll_upper as h1_boll2_h1,
  h2.boll_upper as h1_boll2_h2,
  h3.boll_upper as h1_boll2_h3,
  h4.boll_upper as h1_boll2_h4,
  h5.boll_upper as h1_boll2_h5,
  h6.boll_upper as h1_boll2_h6,
  h7.boll_upper as h1_boll2_h7,
  h8.boll_upper as h1_boll2_h8,
  h9.boll_upper as h1_boll2_h9,
  h10.boll_upper as h1_boll2_h10,
  h11.boll_upper as h1_boll2_h11,
  h12.boll_upper as h1_boll2_h12,
  h13.boll_upper as h1_boll2_h13,
  h14.boll_upper as h1_boll2_h14,
  h15.boll_upper as h1_boll2_h15,
  h16.boll_upper as h1_boll2_h16,
  h17.boll_upper as h1_boll2_h17,
  h18.boll_upper as h1_boll2_h18,
  h19.boll_upper as h1_boll2_h19,
  h20.boll_upper as h1_boll2_h20,
  h21.boll_upper as h1_boll2_h21,
  h22.boll_upper as h1_boll2_h22,
  h23.boll_upper as h1_boll2_h23,
  h24.boll_upper as h1_boll2_h24,

  h1.boll_lower as h1_boll3_h1,
  h2.boll_lower as h1_boll3_h2,
  h3.boll_lower as h1_boll3_h3,
  h4.boll_lower as h1_boll3_h4,
  h5.boll_lower as h1_boll3_h5,
  h6.boll_lower as h1_boll3_h6,
  h7.boll_lower as h1_boll3_h7,
  h8.boll_lower as h1_boll3_h8,
  h9.boll_lower as h1_boll3_h9,
  h10.boll_lower as h1_boll3_h10,
  h11.boll_lower as h1_boll3_h11,
  h12.boll_lower as h1_boll3_h12,
  h13.boll_lower as h1_boll3_h13,
  h14.boll_lower as h1_boll3_h14,
  h15.boll_lower as h1_boll3_h15,
  h16.boll_lower as h1_boll3_h16,
  h17.boll_lower as h1_boll3_h17,
  h18.boll_lower as h1_boll3_h18,
  h19.boll_lower as h1_boll3_h19,
  h20.boll_lower as h1_boll3_h20,
  h21.boll_lower as h1_boll3_h21,
  h22.boll_lower as h1_boll3_h22,
  h23.boll_lower as h1_boll3_h23,
  h24.boll_lower as h1_boll3_h24


into adm.h1_price_ki_h1



from forex.dwd_price_h1 h1                   -- hour -1

  LEFT OUTER JOIN forex.dwd_price_h1 h2      -- hour -2
    on h1.currency=h2.currency and h1.r=h2.r+2
  LEFT OUTER JOIN forex.dwd_price_h1 h3      -- hour -3
    on h1.currency=h3.currency and h1.r=h3.r+3
  LEFT OUTER JOIN forex.dwd_price_h1 h4      -- hour -4
    on h1.currency=h4.currency and h1.r=h4.r+4

  LEFT OUTER JOIN forex.dwd_price_h1 h5
    on h1.currency=h5.currency and h1.r=h5.r+5
  LEFT OUTER JOIN forex.dwd_price_h1 h6
    on h1.currency=h6.currency and h1.r=h6.r+6
  LEFT OUTER JOIN forex.dwd_price_h1 h7
    on h1.currency=h7.currency and h1.r=h7.r+7
  LEFT OUTER JOIN forex.dwd_price_h1 h8
    on h1.currency=h8.currency and h1.r=h8.r+8
  LEFT OUTER JOIN forex.dwd_price_h1 h9
    on h1.currency=h9.currency and h1.r=h9.r+9
  LEFT OUTER JOIN forex.dwd_price_h1 h10
    on h1.currency=h10.currency and h1.r=h10.r+10
  LEFT OUTER JOIN forex.dwd_price_h1 h11
    on h1.currency=h11.currency and h1.r=h11.r+11
  LEFT OUTER JOIN forex.dwd_price_h1 h12
    on h1.currency=h12.currency and h1.r=h12.r+12

  LEFT OUTER JOIN forex.dwd_price_h1 h13
    on h1.currency=h13.currency and h1.r=h13.r+13
  LEFT OUTER JOIN forex.dwd_price_h1 h14
    on h1.currency=h14.currency and h1.r=h14.r+14
  LEFT OUTER JOIN forex.dwd_price_h1 h15
    on h1.currency=h15.currency and h1.r=h15.r+15
  LEFT OUTER JOIN forex.dwd_price_h1 h16
    on h1.currency=h16.currency and h1.r=h16.r+16

  LEFT OUTER JOIN forex.dwd_price_h1 h17
    on h1.currency=h17.currency and h1.r=h17.r+17
  LEFT OUTER JOIN forex.dwd_price_h1 h18
    on h1.currency=h18.currency and h1.r=h18.r+18
  LEFT OUTER JOIN forex.dwd_price_h1 h19
    on h1.currency=h19.currency and h1.r=h19.r+19
  LEFT OUTER JOIN forex.dwd_price_h1 h20
    on h1.currency=h20.currency and h1.r=h20.r+20

  LEFT OUTER JOIN forex.dwd_price_h1 h21
    on h1.currency=h21.currency and h1.r=h21.r+21
  LEFT OUTER JOIN forex.dwd_price_h1 h22
    on h1.currency=h22.currency and h1.r=h22.r+22
  LEFT OUTER JOIN forex.dwd_price_h1 h23
    on h1.currency=h23.currency and h1.r=h23.r+23
  LEFT OUTER JOIN forex.dwd_price_h1 h24
    on h1.currency=h24.currency and h1.r=h24.r+24

;