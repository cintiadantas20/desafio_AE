with fct_salesorderheader as (
    select 
        salesorderid
        , orderdate 
        , shipdate 
        , case
            when orderstatus = 1 then 'In_process'
            when orderstatus = 2 then 'Approved'
            when orderstatus = 3 then 'Backordered' 
            when orderstatus = 4 then 'Rejected' 
            when orderstatus = 5 then 'Shipped'
            when orderstatus = 6 then 'Cancelled' 
            else 'No status'
        end as orderstatus
        , customerid 
        , salespersonid 
        , billtoaddressid 
        , shiptoaddressid
        , shipmethodid 
        , creditcardid
        , subtotal 
        , taxamt
        , freight 
        , totaldue 
    from {{ ref('stg_salesorderheader') }}
)

select *
from fct_salesorderheader
