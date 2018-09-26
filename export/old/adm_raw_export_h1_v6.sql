
insert into export.adm_raw_export_h1_v6
SELECT
      t1.currency as currency_h,
      t1.pricedate as pricedate_h,
      datepart(WEEKDAY,t1.pricedate) as pricedateweekday_h,
      datepart(HOUR,t1.pricetime) as pricetimehour_h,

      t1.closebid as closebid_h,
      t1.trend as trend_h,

  --小时特征值
      t1.gapbid_pre_h1,
      t1.gapbid_pre_h2,
      t1.gapbid_pre_h3,
      t1.gapbid_pre_h4,
      t1.gapbid_pre_h5,
      t1.gapbid_pre_h6,
      t1.gapbid_pre_h7,
      t1.gapbid_pre_h8,
      t1.gapbid_pre_h9,
      t1.gapbid_pre_h10,
      t1.gapbid_pre_h11,
      t1.gapbid_pre_h12,

      t1.trend_pre_h1,
      t1.trend_pre_h2,
      t1.trend_pre_h3,
      t1.trend_pre_h4,
      t1.trend_pre_h5,
      t1.trend_pre_h6,
      t1.trend_pre_h7,
      t1.trend_pre_h8,
      t1.trend_pre_h9,
      t1.trend_pre_h10,
      t1.trend_pre_h11,
      t1.trend_pre_h12,

      t1.trend_gap_pre_h1,
      t1.trend_gap_pre_h2,
      t1.trend_gap_pre_h3,
      t1.trend_gap_pre_h4,
      t1.trend_gap_pre_h5,
      t1.trend_gap_pre_h6,
      t1.trend_gap_pre_h7,
      t1.trend_gap_pre_h8,
      t1.trend_gap_pre_h9,
      t1.trend_gap_pre_h10,
      t1.trend_gap_pre_h11,
      t1.trend_gap_pre_h12,

      t2.openclose_h1,
      t2.openclose_h2,
      t2.openclose_h3,
      t2.openclose_h4,
      t2.openclose_h5,
      t2.openclose_h6,
      t2.openclose_h7,
      t2.openclose_h8,
      t2.openclose_h9,
      t2.openclose_h10,
      t2.openclose_h11,
      t2.openclose_h12,

      t2.highlow_h1,
      t2.highlow_h2,
      t2.highlow_h3,
      t2.highlow_h4,
      t2.highlow_h5,
      t2.highlow_h6,
      t2.highlow_h7,
      t2.highlow_h8,
      t2.highlow_h9,
      t2.highlow_h10,
      t2.highlow_h11,
      t2.highlow_h12,

      t2.upbar_h1,
      t2.upbar_h2,
      t2.upbar_h3,
      t2.upbar_h4,
      t2.upbar_h5,
      t2.upbar_h6,
      t2.upbar_h7,
      t2.upbar_h8,
      t2.upbar_h9,
      t2.upbar_h10,
      t2.upbar_h11,
      t2.upbar_h12,

      t2.downbar_h1,
      t2.downbar_h2,
      t2.downbar_h3,
      t2.downbar_h4,
      t2.downbar_h5,
      t2.downbar_h6,
      t2.downbar_h7,
      t2.downbar_h8,
      t2.downbar_h9,
      t2.downbar_h10,
      t2.downbar_h11,
      t2.downbar_h12,



  --天特征值
      t4.gapbid_pre_d1,
      t4.gapbid_pre_d2,
      t4.gapbid_pre_d3,
      t4.gapbid_pre_d4,
      t4.gapbid_pre_d5,
      t4.gapbid_pre_d6,
      t4.gapbid_pre_d7,
      t4.gapbid_pre_d8,
      t4.gapbid_pre_d9,
      t4.gapbid_pre_d10,
      t4.gapbid_pre_d11,
      t4.gapbid_pre_d12,
      t4.gapbid_pre_d13,
      t4.gapbid_pre_d14,

      t4.trend_pre_d1,
      t4.trend_pre_d2,
      t4.trend_pre_d3,
      t4.trend_pre_d4,
      t4.trend_pre_d5,
      t4.trend_pre_d6,
      t4.trend_pre_d7,
      t4.trend_pre_d8,
      t4.trend_pre_d9,
      t4.trend_pre_d10,
      t4.trend_pre_d11,
      t4.trend_pre_d12,
      t4.trend_pre_d13,
      t4.trend_pre_d14,

      t4.trend_gap_pre_d1,
      t4.trend_gap_pre_d2,
      t4.trend_gap_pre_d3,
      t4.trend_gap_pre_d4,
      t4.trend_gap_pre_d5,
      t4.trend_gap_pre_d6,
      t4.trend_gap_pre_d7,
      t4.trend_gap_pre_d8,
      t4.trend_gap_pre_d9,
      t4.trend_gap_pre_d10,
      t4.trend_gap_pre_d11,
      t4.trend_gap_pre_d12,
      t4.trend_gap_pre_d13,
      t4.trend_gap_pre_d14,

      t5.openclose_d1,
      t5.openclose_d2,
      t5.openclose_d3,
      t5.openclose_d4,
      t5.openclose_d5,
      t5.openclose_d6,
      t5.openclose_d7,
      t5.openclose_d8,
      t5.openclose_d9,
      t5.openclose_d10,
      t5.openclose_d11,
      t5.openclose_d12,
      t5.openclose_d13,
      t5.openclose_d14,

      t5.highlow_d1,
      t5.highlow_d2,
      t5.highlow_d3,
      t5.highlow_d4,
      t5.highlow_d5,
      t5.highlow_d6,
      t5.highlow_d7,
      t5.highlow_d8,
      t5.highlow_d9,
      t5.highlow_d10,
      t5.highlow_d11,
      t5.highlow_d12,
      t5.highlow_d13,
      t5.highlow_d14,

      t5.upbar_d1,
      t5.upbar_d2,
      t5.upbar_d3,
      t5.upbar_d4,
      t5.upbar_d5,
      t5.upbar_d6,
      t5.upbar_d7,
      t5.upbar_d8,
      t5.upbar_d9,
      t5.upbar_d10,
      t5.upbar_d11,
      t5.upbar_d12,
      t5.upbar_d13,
      t5.upbar_d14,

      t5.downbar_d1,
      t5.downbar_d2,
      t5.downbar_d3,
      t5.downbar_d4,
      t5.downbar_d5,
      t5.downbar_d6,
      t5.downbar_d7,
      t5.downbar_d8,
      t5.downbar_d9,
      t5.downbar_d10,
      t5.downbar_d11,
      t5.downbar_d12,
      t5.downbar_d13,
      t5.downbar_d14,


  --结果标签
      r.lable_trend_h1,
      r.lable_trend_h2,
      r.lable_trend_h3,
      r.lable_trend_gap_h1,
      r.lable_trend_gap_h2,
      r.lable_trend_gap_h3,
      r.lable_price,
      r.lable_price_h1,
      r.lable_price_h2,
      r.lable_price_h3



FROM adm.h1_price_h1 as t1
      LEFT OUTER JOIN adm.h1_price_bar_h1 as t2
            on t1.currency=t2.currency and t1.pricedate=t2.pricedate and t1.pricetime=t2.pricetime

      LEFT OUTER JOIN adm.h1_price_d1 as t4
            on t1.currency=t4.currency and t1.pricedate=t4.pricedate and t1.pricetime=t4.pricetime
      LEFT OUTER JOIN adm.h1_price_bar_d1 as t5
            on t1.currency=t5.currency and t1.pricedate=t5.pricedate and t1.pricetime=t5.pricetime
       LEFT OUTER JOIN adm.h1_lable r
            on t1.currency=r.currency and t1.pricedate=r.pricedate and t1.pricetime=r.pricetime
where
  datepart(WEEKDAY,t1.pricedate)!=1 and
  t1.currency='EURUSD' and
  year(t1.pricedate)<=2017
;