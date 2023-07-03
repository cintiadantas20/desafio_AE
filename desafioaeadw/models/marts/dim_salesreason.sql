with stg_salesorderheader as(
    select
        distinct(salesorderid)
    from {{ ref('stg_salesorderheader')}}
)

, int_salesreason as (
    select 
        salesreasonid
        , salesorderid
        , reasonname
        , reasontype
    from {{ ref('int_salesreason') }} 
)

, dim_salesreason as (
    select
        int_salesreason.salesorderid
        , string_agg(int_salesreason.reasonname, ', ') as reasonname
    from stg_salesorderheader
    left join int_salesreason on stg_salesorderheader.salesorderid = int_salesreason.salesorderid
    group by int_salesreason.salesorderid
)

select *
from dim_salesreason