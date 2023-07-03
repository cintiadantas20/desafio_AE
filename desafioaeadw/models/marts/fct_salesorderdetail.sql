with fct_salesorderdetail as (
    select
        salesorderdetailid
        , orderqty
        , productid
        , unitprice
        , unitpricediscount
        , grossrevenue
        , discount
    from {{ ref('int_salesorderdetail') }}
)

select *
from fct_salesorderdetail