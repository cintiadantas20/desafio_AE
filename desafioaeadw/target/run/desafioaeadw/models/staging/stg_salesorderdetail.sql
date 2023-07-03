

  create or replace view `desafioaeadw`.`dbt_cintia_staging`.`stg_salesorderdetail`
  OPTIONS()
  as with
    sources as (
        select 
          salesorderid
          , salesorderdetailid
          , carriertrackingnumber
          , orderqty
          , productid
          , specialofferid
          , unitprice
          , unitpricediscount
          , rowguid
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`salesorderdetail` 
    )

select *
from sources;

