
  
    

    create or replace table `desafioaeadw`.`dbt_cintia_staging`.`stg_salesorderdetail`
    
    
    OPTIONS()
    as (
      with
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
from sources
    );
  