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
        from {{ source('dbt_cintia', 'salesorderdetail') }} 
    )

select *
from sources