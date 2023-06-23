
  
    

    create or replace table `desafioaeadw`.`dbt_cintia_staging`.`stg_raw_tables_salesorderheader`
    
    
    OPTIONS()
    as (
      with
    salesorderheader as (
        select 
          salesorderid
          , revisionnumber
          , orderdate
          , duedate
          , shipdate
          , status
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
        from `desafioaeadw`.`raw_tables`.`salesorderheader` 
    )

select *
from salesorderheader
    );
  