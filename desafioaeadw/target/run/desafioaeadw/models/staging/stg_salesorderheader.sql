
  
    

    create or replace table `desafioaeadw`.`dbt_cintia_staging`.`stg_salesorderheader`
    
    
    OPTIONS()
    as (
      with
    sources as (
        select 
          salesorderid
          , revisionnumber
          , orderdate
          , duedate
          , shipdate
          , status as orderstatus
          , onlineorderflag
          , purchaseordernumber
          , accountnumber
          , customerid
          , salespersonid
          , territoryid
          , billtoaddressid
          , shiptoaddressid
          , shipmethodid
          , creditcardid
          , creditcardapprovalcode
          , currencyrateid
          , subtotal
          , taxamt
          , freight
          , totaldue
          , comment
          , rowguid
          , modifieddate 
        from `desafioaeadw`.`dbt_cintia`.`salesorderheader` 
    )

select *
from sources
    );
  