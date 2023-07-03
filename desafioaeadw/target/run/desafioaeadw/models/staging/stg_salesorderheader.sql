

  create or replace view `desafioaeadw`.`dbt_cintia_staging`.`stg_salesorderheader`
  OPTIONS()
  as with
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
          , case
              when creditcardid is null then 'Other'
              else creditcardid
              end as creditcardid
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
from sources;

