
drop TABLE IF EXISTS forex.dwd_price_bid_m30;
SELECT
      currency,
      pricedate,
      pricetime,
      openbid,
      closebid,
      highbid,
      lowbid,
      openbid-closebid as openclose,
      highbid-lowbid as highlow,
      CASE
        when openbid>closebid then highbid - openbid
        when openbid<closebid then highbid - closebid
        when openbid=closebid then highbid - openbid
      END as upbar,
      CASE
        when openbid>closebid then closebid - lowbid
        when openbid<closebid then openbid - lowbid
        when openbid=closebid then closebid - lowbid
      END as downbar,
      totalticks,
      row_number() OVER (PARTITION BY currency ORDER BY pricedate, pricetime ) AS r
INTO forex.dwd_price_bid_m30
FROM forex.ods_price_m30
;