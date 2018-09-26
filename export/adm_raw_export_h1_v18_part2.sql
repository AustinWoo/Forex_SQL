drop table IF EXISTS export.adm_raw_export_h1_v18_part2;


SELECT


--top 100
--      t1.currency as currency_h,
      t1.pricedate,
      t1.pricetime,
      --weekday
      case when datepart(WEEKDAY,t1.pricedate)=1 then 1 else 0 end as wd_h_1,
      case when datepart(WEEKDAY,t1.pricedate)=2 then 1 else 0 end as wd_h_2,
      case when datepart(WEEKDAY,t1.pricedate)=3 then 1 else 0 end as wd_h_3,
      case when datepart(WEEKDAY,t1.pricedate)=4 then 1 else 0 end as wd_h_4,
      case when datepart(WEEKDAY,t1.pricedate)=5 then 1 else 0 end as wd_h_5,
      case when datepart(WEEKDAY,t1.pricedate)=6 then 1 else 0 end as wd_h_6,
      case when datepart(WEEKDAY,t1.pricedate)=7 then 1 else 0 end as wd_h_7,
      --hour
      case when datepart(HOUR,t1.pricetime)=0 then 1 else 0 end as th_h_0,
      case when datepart(HOUR,t1.pricetime)=1 then 1 else 0 end as th_h_1,
      case when datepart(HOUR,t1.pricetime)=2 then 1 else 0 end as th_h_2,
      case when datepart(HOUR,t1.pricetime)=3 then 1 else 0 end as th_h_3,
      case when datepart(HOUR,t1.pricetime)=4 then 1 else 0 end as th_h_4,
      case when datepart(HOUR,t1.pricetime)=5 then 1 else 0 end as th_h_5,
      case when datepart(HOUR,t1.pricetime)=6 then 1 else 0 end as th_h_6,
      case when datepart(HOUR,t1.pricetime)=7 then 1 else 0 end as th_h_7,
      case when datepart(HOUR,t1.pricetime)=8 then 1 else 0 end as th_h_8,
      case when datepart(HOUR,t1.pricetime)=9 then 1 else 0 end as th_h_9,
      case when datepart(HOUR,t1.pricetime)=10 then 1 else 0 end as th_h_10,
      case when datepart(HOUR,t1.pricetime)=11 then 1 else 0 end as th_h_11,
      case when datepart(HOUR,t1.pricetime)=12 then 1 else 0 end as th_h_12,
      case when datepart(HOUR,t1.pricetime)=13 then 1 else 0 end as th_h_13,
      case when datepart(HOUR,t1.pricetime)=14 then 1 else 0 end as th_h_14,
      case when datepart(HOUR,t1.pricetime)=15 then 1 else 0 end as th_h_15,
      case when datepart(HOUR,t1.pricetime)=16 then 1 else 0 end as th_h_16,
      case when datepart(HOUR,t1.pricetime)=17 then 1 else 0 end as th_h_17,
      case when datepart(HOUR,t1.pricetime)=18 then 1 else 0 end as th_h_18,
      case when datepart(HOUR,t1.pricetime)=19 then 1 else 0 end as th_h_19,
      case when datepart(HOUR,t1.pricetime)=20 then 1 else 0 end as th_h_20,
      case when datepart(HOUR,t1.pricetime)=21 then 1 else 0 end as th_h_21,
      case when datepart(HOUR,t1.pricetime)=22 then 1 else 0 end as th_h_22,
      case when datepart(HOUR,t1.pricetime)=23 then 1 else 0 end as th_h_23


  --小时特征
      --价格特征
      ,[h1_t1_h1]
      ,[h1_t1_h2]
      ,[h1_t1_h3]
      ,[h1_t1_h4]
      ,[h1_t1_h5]
      ,[h1_t1_h6]
      ,[h1_t1_h7]
      ,[h1_t1_h8]
      ,[h1_t1_h9]
      ,[h1_t1_h10]
      ,[h1_t1_h11]
      ,[h1_t1_h12]
      ,[h1_t1_h13]
      ,[h1_t1_h14]
      ,[h1_t1_h15]
      ,[h1_t1_h16]
      ,[h1_t1_h17]
      ,[h1_t1_h18]
      ,[h1_t1_h19]
      ,[h1_t1_h20]
      ,[h1_t1_h21]
      ,[h1_t1_h22]
      ,[h1_t1_h23]
      ,[h1_t1_h24]

      ,[h1_t2_h1]
      ,[h1_t2_h2]
      ,[h1_t2_h3]
      ,[h1_t2_h4]
      ,[h1_t2_h5]
      ,[h1_t2_h6]
      ,[h1_t2_h7]
      ,[h1_t2_h8]
      ,[h1_t2_h9]
      ,[h1_t2_h10]
      ,[h1_t2_h11]
      ,[h1_t2_h12]
      ,[h1_t2_h13]
      ,[h1_t2_h14]
      ,[h1_t2_h15]
      ,[h1_t2_h16]
      ,[h1_t2_h17]
      ,[h1_t2_h18]
      ,[h1_t2_h19]
      ,[h1_t2_h20]
      ,[h1_t2_h21]
      ,[h1_t2_h22]
      ,[h1_t2_h23]
      ,[h1_t2_h24]

      ,h1_p1_h1
      ,h1_p1_h2
      ,h1_p1_h3
      ,h1_p1_h4
      ,h1_p1_h5
      ,h1_p1_h6
      ,h1_p1_h7
      ,h1_p1_h8
      ,h1_p1_h9
      ,h1_p1_h10
      ,h1_p1_h11
      ,h1_p1_h12
      ,h1_p1_h13
      ,h1_p1_h14
      ,h1_p1_h15
      ,h1_p1_h16
      ,h1_p1_h17
      ,h1_p1_h18
      ,h1_p1_h19
      ,h1_p1_h20
      ,h1_p1_h21
      ,h1_p1_h22
      ,h1_p1_h23
      ,h1_p1_h24
      ,h1_p2_h1
      ,h1_p2_h2
      ,h1_p2_h3
      ,h1_p2_h4
      ,h1_p2_h5
      ,h1_p2_h6
      ,h1_p2_h7
      ,h1_p2_h8
      ,h1_p2_h9
      ,h1_p2_h10
      ,h1_p2_h11
      ,h1_p2_h12
      ,h1_p2_h13
      ,h1_p2_h14
      ,h1_p2_h15
      ,h1_p2_h16
      ,h1_p2_h17
      ,h1_p2_h18
      ,h1_p2_h19
      ,h1_p2_h20
      ,h1_p2_h21
      ,h1_p2_h22
      ,h1_p2_h23
      ,h1_p2_h24
      ,h1_p3_h1
      ,h1_p3_h2
      ,h1_p3_h3
      ,h1_p3_h4
      ,h1_p3_h5
      ,h1_p3_h6
      ,h1_p3_h7
      ,h1_p3_h8
      ,h1_p3_h9
      ,h1_p3_h10
      ,h1_p3_h11
      ,h1_p3_h12
      ,h1_p3_h13
      ,h1_p3_h14
      ,h1_p3_h15
      ,h1_p3_h16
      ,h1_p3_h17
      ,h1_p3_h18
      ,h1_p3_h19
      ,h1_p3_h20
      ,h1_p3_h21
      ,h1_p3_h22
      ,h1_p3_h23
      ,h1_p3_h24




      --柱子特征
      ,[h1_b1_h1]
      ,[h1_b1_h2]
      ,[h1_b1_h3]
      ,[h1_b1_h4]
      ,[h1_b1_h5]
      ,[h1_b1_h6]
      ,[h1_b1_h7]
      ,[h1_b1_h8]
      ,[h1_b1_h9]
      ,[h1_b1_h10]
      ,[h1_b1_h11]
      ,[h1_b1_h12]
      ,[h1_b1_h13]
      ,[h1_b1_h14]
      ,[h1_b1_h15]
      ,[h1_b1_h16]
      ,[h1_b1_h17]
      ,[h1_b1_h18]
      ,[h1_b1_h19]
      ,[h1_b1_h20]
      ,[h1_b1_h21]
      ,[h1_b1_h22]
      ,[h1_b1_h23]
      ,[h1_b1_h24]

      ,[h1_b2_h1]
      ,[h1_b2_h2]
      ,[h1_b2_h3]
      ,[h1_b2_h4]
      ,[h1_b2_h5]
      ,[h1_b2_h6]
      ,[h1_b2_h7]
      ,[h1_b2_h8]
      ,[h1_b2_h9]
      ,[h1_b2_h10]
      ,[h1_b2_h11]
      ,[h1_b2_h12]
      ,[h1_b2_h13]
      ,[h1_b2_h14]
      ,[h1_b2_h15]
      ,[h1_b2_h16]
      ,[h1_b2_h17]
      ,[h1_b2_h18]
      ,[h1_b2_h19]
      ,[h1_b2_h20]
      ,[h1_b2_h21]
      ,[h1_b2_h22]
      ,[h1_b2_h23]
      ,[h1_b2_h24]

      ,[h1_b3_h1]
      ,[h1_b3_h2]
      ,[h1_b3_h3]
      ,[h1_b3_h4]
      ,[h1_b3_h5]
      ,[h1_b3_h6]
      ,[h1_b3_h7]
      ,[h1_b3_h8]
      ,[h1_b3_h9]
      ,[h1_b3_h10]
      ,[h1_b3_h11]
      ,[h1_b3_h12]
      ,[h1_b3_h13]
      ,[h1_b3_h14]
      ,[h1_b3_h15]
      ,[h1_b3_h16]
      ,[h1_b3_h17]
      ,[h1_b3_h18]
      ,[h1_b3_h19]
      ,[h1_b3_h20]
      ,[h1_b3_h21]
      ,[h1_b3_h22]
      ,[h1_b3_h23]
      ,[h1_b3_h24]

      ,[h1_b4_h1]
      ,[h1_b4_h2]
      ,[h1_b4_h3]
      ,[h1_b4_h4]
      ,[h1_b4_h5]
      ,[h1_b4_h6]
      ,[h1_b4_h7]
      ,[h1_b4_h8]
      ,[h1_b4_h9]
      ,[h1_b4_h10]
      ,[h1_b4_h11]
      ,[h1_b4_h12]
      ,[h1_b4_h13]
      ,[h1_b4_h14]
      ,[h1_b4_h15]
      ,[h1_b4_h16]
      ,[h1_b4_h17]
      ,[h1_b4_h18]
      ,[h1_b4_h19]
      ,[h1_b4_h20]
      ,[h1_b4_h21]
      ,[h1_b4_h22]
      ,[h1_b4_h23]
      ,[h1_b4_h24]
      --交易量特征

      ,[h1_v2_h1]
      ,[h1_v2_h2]
      ,[h1_v2_h3]
      ,[h1_v2_h4]
      ,[h1_v2_h5]
      ,[h1_v2_h6]
      ,[h1_v2_h7]
      ,[h1_v2_h8]
      ,[h1_v2_h9]
      ,[h1_v2_h10]
      ,[h1_v2_h11]
      ,[h1_v2_h12]
      ,[h1_v2_h13]
      ,[h1_v2_h14]
      ,[h1_v2_h15]
      ,[h1_v2_h16]
      ,[h1_v2_h17]
      ,[h1_v2_h18]
      ,[h1_v2_h19]
      ,[h1_v2_h20]
      ,[h1_v2_h21]
      ,[h1_v2_h22]
      ,[h1_v2_h23]
      ,[h1_v2_h24]

      ,[h1_v3_h1]
      ,[h1_v3_h2]
      ,[h1_v3_h3]
      ,[h1_v3_h4]
      ,[h1_v3_h5]
      ,[h1_v3_h6]
      ,[h1_v3_h7]
      ,[h1_v3_h8]
      ,[h1_v3_h9]
      ,[h1_v3_h10]
      ,[h1_v3_h11]
      ,[h1_v3_h12]
      ,[h1_v3_h13]
      ,[h1_v3_h14]
      ,[h1_v3_h15]
      ,[h1_v3_h16]
      ,[h1_v3_h17]
      ,[h1_v3_h18]
      ,[h1_v3_h19]
      ,[h1_v3_h20]
      ,[h1_v3_h21]
      ,[h1_v3_h22]
      ,[h1_v3_h23]
      ,[h1_v3_h24]
  --天特征
      --价格特征
      ,[h1_t1_d1]
      ,[h1_t1_d2]
      ,[h1_t1_d3]
      ,[h1_t1_d4]
      ,[h1_t1_d5]
      ,[h1_t1_d6]
      ,[h1_t1_d7]
      ,[h1_t1_d8]
      ,[h1_t1_d9]
      ,[h1_t1_d10]

      ,[h1_t2_d1]
      ,[h1_t2_d2]
      ,[h1_t2_d3]
      ,[h1_t2_d4]
      ,[h1_t2_d5]
      ,[h1_t2_d6]
      ,[h1_t2_d7]
      ,[h1_t2_d8]
      ,[h1_t2_d9]
      ,[h1_t2_d10]

      ,h1_p1_d1
      ,h1_p1_d2
      ,h1_p1_d3
      ,h1_p1_d4
      ,h1_p1_d5
      ,h1_p1_d6
      ,h1_p1_d7
      ,h1_p1_d8
      ,h1_p1_d9
      ,h1_p1_d10
      ,h1_p2_d1
      ,h1_p2_d2
      ,h1_p2_d3
      ,h1_p2_d4
      ,h1_p2_d5
      ,h1_p2_d6
      ,h1_p2_d7
      ,h1_p2_d8
      ,h1_p2_d9
      ,h1_p2_d10
      ,h1_p3_d1
      ,h1_p3_d2
      ,h1_p3_d3
      ,h1_p3_d4
      ,h1_p3_d5
      ,h1_p3_d6
      ,h1_p3_d7
      ,h1_p3_d8
      ,h1_p3_d9
      ,h1_p3_d10

      --柱子特征
      ,[h1_b1_d1]
      ,[h1_b1_d2]
      ,[h1_b1_d3]
      ,[h1_b1_d4]
      ,[h1_b1_d5]
      ,[h1_b1_d6]
      ,[h1_b1_d7]
      ,[h1_b1_d8]
      ,[h1_b1_d9]
      ,[h1_b1_d10]

      ,[h1_b2_d1]
      ,[h1_b2_d2]
      ,[h1_b2_d3]
      ,[h1_b2_d4]
      ,[h1_b2_d5]
      ,[h1_b2_d6]
      ,[h1_b2_d7]
      ,[h1_b2_d8]
      ,[h1_b2_d9]
      ,[h1_b2_d10]

      ,[h1_b3_d1]
      ,[h1_b3_d2]
      ,[h1_b3_d3]
      ,[h1_b3_d4]
      ,[h1_b3_d5]
      ,[h1_b3_d6]
      ,[h1_b3_d7]
      ,[h1_b3_d8]
      ,[h1_b3_d9]
      ,[h1_b3_d10]

      ,[h1_b4_d1]
      ,[h1_b4_d2]
      ,[h1_b4_d3]
      ,[h1_b4_d4]
      ,[h1_b4_d5]
      ,[h1_b4_d6]
      ,[h1_b4_d7]
      ,[h1_b4_d8]
      ,[h1_b4_d9]
      ,[h1_b4_d10]

      ,lable_h1_2avg
      ,lable_h1_price_2avg
      ,lable_h1_price_2avg_gap
      ,lable_price_2avg

into export.adm_raw_export_h1_v18_part2

FROM adm.h1_price_h1 as t1
      LEFT OUTER JOIN adm.h1_price_bar_h1 as t2
            on t1.currency=t2.currency and t1.pricedate=t2.pricedate and t1.pricetime=t2.pricetime
      LEFT OUTER JOIN adm.h1_volume_h1 as t3
            on t1.currency=t3.currency and t1.pricedate=t3.pricedate and t1.pricetime=t3.pricetime
--       LEFT OUTER JOIN adm.h1_price_h1_v2 t6
--             on  t1.pricedate=t6.pricedate and t1.pricetime=t6.pricetime

      LEFT OUTER JOIN adm.h1_price_d1 as t4
            on t1.currency=t4.currency and t1.pricedate=t4.pricedate and t1.pricetime=t4.pricetime
      LEFT OUTER JOIN adm.h1_price_bar_d1 as t5
            on t1.currency=t5.currency and t1.pricedate=t5.pricedate and t1.pricetime=t5.pricetime
--       left outer join adm.h1_price_d1_v2 t7
--             on t1.currency=t7.currency and t1.pricedate=t7.pricedate and t1.pricetime=t7.pricetime
      LEFT OUTER JOIN adm.h1_lable l
            on t1.currency=l.currency and t1.pricedate=l.pricedate and t1.pricetime=l.pricetime
where

  t1.currency='EURUSD' and
  year(t1.pricedate)=2018 and
  h1_t1_h1 is not null and
  t2.pricedate is not null and
  t3.pricedate is not null and
  t4.pricedate is not null and
  t5.pricedate is not null and
  lable_h1_2avg is not null and
  lable_h1_price_2avg is not null
;