
drop TABLE IF EXISTS adm.h1_volume_h1;
select
  a.currency,
  a.pricedate,
  a.pricetime,

  a.volume as h1_v1_h1,     -- hour -1
  h1.volume as h1_v1_h2,    -- hour -2
  h2.volume as h1_v1_h3,
  h3.volume as h1_v1_h4,
  h4.volume as h1_v1_h5,
  h5.volume as h1_v1_h6,
  h6.volume as h1_v1_h7,
  h7.volume as h1_v1_h8,
  h8.volume as h1_v1_h9,
  h9.volume as h1_v1_h10,
  h10.volume as h1_v1_h11,
  h11.volume as h1_v1_h12,
  h12.volume as h1_v1_h13,
  h13.volume as h1_v1_h14,
  h14.volume as h1_v1_h15,
  h15.volume as h1_v1_h16,
  h16.volume as h1_v1_h17,
  h17.volume as h1_v1_h18,
  h18.volume as h1_v1_h19,
  h19.volume as h1_v1_h20,
  h20.volume as h1_v1_h21,
  h21.volume as h1_v1_h22,
  h22.volume as h1_v1_h23,
  h23.volume as h1_v1_h24,

  case when h1.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h1.volume AS DOUBLE PRECISION) else null end as h1_v2_h1,    --hour -2
  case when h2.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h2.volume as DOUBLE PRECISION) else null end as h1_v2_h2,    --hour -3
  case when h3.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h3.volume as DOUBLE PRECISION) else null end as h1_v2_h3,
  case when h4.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h4.volume as DOUBLE PRECISION) else null end as h1_v2_h4,
  case when h5.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h5.volume as DOUBLE PRECISION) else null end as h1_v2_h5,
  case when h6.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h6.volume as DOUBLE PRECISION) else null end as h1_v2_h6,
  case when h7.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h7.volume as DOUBLE PRECISION) else null end as h1_v2_h7,
  case when h8.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h8.volume as DOUBLE PRECISION) else null end as h1_v2_h8,
  case when h9.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h9.volume as DOUBLE PRECISION) else null end as h1_v2_h9,
  case when h10.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h10.volume as DOUBLE PRECISION) else null end as h1_v2_h10,
  case when h11.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h11.volume as DOUBLE PRECISION) else null end as h1_v2_h11,
  case when h12.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h12.volume as DOUBLE PRECISION) else null end as h1_v2_h12,
  case when h13.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h13.volume as DOUBLE PRECISION) else null end as h1_v2_h13,
  case when h14.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h14.volume as DOUBLE PRECISION) else null end as h1_v2_h14,
  case when h15.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h15.volume as DOUBLE PRECISION) else null end as h1_v2_h15,
  case when h16.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h16.volume as DOUBLE PRECISION) else null end as h1_v2_h16,
  case when h17.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h17.volume as DOUBLE PRECISION) else null end as h1_v2_h17,
  case when h18.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h18.volume as DOUBLE PRECISION) else null end as h1_v2_h18,
  case when h19.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h19.volume as DOUBLE PRECISION) else null end as h1_v2_h19,
  case when h20.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h20.volume as DOUBLE PRECISION) else null end as h1_v2_h20,
  case when h21.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h21.volume as DOUBLE PRECISION) else null end as h1_v2_h21,
  case when h22.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h22.volume as DOUBLE PRECISION) else null end as h1_v2_h22,
  case when h23.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h23.volume as DOUBLE PRECISION) else null end as h1_v2_h23,
  case when h24.volume>0 then CAST(a.volume as DOUBLE PRECISION)/CAST(h24.volume as DOUBLE PRECISION) else null end as h1_v2_h24,


  a.volume_trend_perecent as h1_v3_h1,
  h1.volume_trend_perecent as h1_v3_h2,
  h2.volume_trend_perecent as h1_v3_h3,
  h3.volume_trend_perecent as h1_v3_h4,
  h4.volume_trend_perecent as h1_v3_h5,
  h5.volume_trend_perecent as h1_v3_h6,
  h6.volume_trend_perecent as h1_v3_h7,
  h7.volume_trend_perecent as h1_v3_h8,
  h8.volume_trend_perecent as h1_v3_h9,
  h9.volume_trend_perecent as h1_v3_h10,
  h10.volume_trend_perecent as h1_v3_h11,
  h11.volume_trend_perecent as h1_v3_h12,
  h12.volume_trend_perecent as h1_v3_h13,
  h13.volume_trend_perecent as h1_v3_h14,
  h14.volume_trend_perecent as h1_v3_h15,
  h15.volume_trend_perecent as h1_v3_h16,
  h16.volume_trend_perecent as h1_v3_h17,
  h17.volume_trend_perecent as h1_v3_h18,
  h18.volume_trend_perecent as h1_v3_h19,
  h19.volume_trend_perecent as h1_v3_h20,
  h20.volume_trend_perecent as h1_v3_h21,
  h21.volume_trend_perecent as h1_v3_h22,
  h22.volume_trend_perecent as h1_v3_h23,
  h23.volume_trend_perecent as h1_v3_h24




into adm.h1_volume_h1

from forex.dwd_price_h1_trend a                --hour -1
  LEFT OUTER JOIN forex.dwd_price_h1_trend h1  --hour -2
    on a.currency=h1.currency and a.r=h1.r+1
  LEFT OUTER JOIN forex.dwd_price_h1_trend h2  --hour -3
    on a.currency=h2.currency and a.r=h2.r+2
  LEFT OUTER JOIN forex.dwd_price_h1_trend h3
    on a.currency=h3.currency and a.r=h3.r+3
  LEFT OUTER JOIN forex.dwd_price_h1_trend h4
    on a.currency=h4.currency and a.r=h4.r+4
  LEFT OUTER JOIN forex.dwd_price_h1_trend h5
    on a.currency=h5.currency and a.r=h5.r+5
  LEFT OUTER JOIN forex.dwd_price_h1_trend h6
    on a.currency=h6.currency and a.r=h6.r+6
  LEFT OUTER JOIN forex.dwd_price_h1_trend h7
    on a.currency=h7.currency and a.r=h7.r+7
  LEFT OUTER JOIN forex.dwd_price_h1_trend h8
    on a.currency=h8.currency and a.r=h8.r+8
  LEFT OUTER JOIN forex.dwd_price_h1_trend h9
    on a.currency=h9.currency and a.r=h9.r+9
  LEFT OUTER JOIN forex.dwd_price_h1_trend h10
    on a.currency=h10.currency and a.r=h10.r+10
  LEFT OUTER JOIN forex.dwd_price_h1_trend h11
    on a.currency=h11.currency and a.r=h11.r+11
  LEFT OUTER JOIN forex.dwd_price_h1_trend h12
    on a.currency=h12.currency and a.r=h12.r+12

  LEFT OUTER JOIN forex.dwd_price_h1_trend h13
    on a.currency=h13.currency and a.r=h13.r+13
  LEFT OUTER JOIN forex.dwd_price_h1_trend h14
    on a.currency=h14.currency and a.r=h14.r+14
  LEFT OUTER JOIN forex.dwd_price_h1_trend h15
    on a.currency=h15.currency and a.r=h15.r+15
  LEFT OUTER JOIN forex.dwd_price_h1_trend h16
    on a.currency=h16.currency and a.r=h16.r+16

  LEFT OUTER JOIN forex.dwd_price_h1_trend h17
    on a.currency=h17.currency and a.r=h17.r+17
  LEFT OUTER JOIN forex.dwd_price_h1_trend h18
    on a.currency=h18.currency and a.r=h18.r+18
  LEFT OUTER JOIN forex.dwd_price_h1_trend h19
    on a.currency=h19.currency and a.r=h19.r+19
  LEFT OUTER JOIN forex.dwd_price_h1_trend h20
    on a.currency=h20.currency and a.r=h20.r+20

  LEFT OUTER JOIN forex.dwd_price_h1_trend h21
    on a.currency=h21.currency and a.r=h21.r+21
  LEFT OUTER JOIN forex.dwd_price_h1_trend h22
    on a.currency=h22.currency and a.r=h22.r+22
  LEFT OUTER JOIN forex.dwd_price_h1_trend h23
    on a.currency=h23.currency and a.r=h23.r+23
  LEFT OUTER JOIN forex.dwd_price_h1_trend h24
    on a.currency=h24.currency and a.r=h24.r+24


;