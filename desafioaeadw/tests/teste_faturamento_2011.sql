with int_salesorderdetail as (
    select 
        grossrevenue
        , salesorderid
    from {{ ref('int_salesorderdetail')  }}
)

, fct_salesorderheader as (
    select 
        orderdate
        , salesorderid
    from {{ ref('fct_salesorderheader')  }}
)

, teste_faturamento_2011 as (
    select 
        sum(int_salesorderdetail.grossrevenue) as resultado
    from int_salesorderdetail
    left join fct_salesorderheader on int_salesorderdetail.salesorderid = fct_salesorderheader.salesorderid 
    where fct_salesorderheader.orderdate between '2011-01-01' and '2012-01-01'
    having sum(int_salesorderdetail.grossrevenue) = 12646112.162755013
)

select *
from teste_faturamento_2011