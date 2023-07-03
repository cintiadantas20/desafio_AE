with dim_salesorderheaderdetail as (
    select 
        salesorderid 
        , salesorderdetailid 
    from {{ ref('int_salesorderdetail') }}
)

select *
from dim_salesorderheaderdetail