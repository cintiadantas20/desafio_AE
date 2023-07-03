with stg_salesorderheader as(
    select
        distinct(creditcardid)
    from {{ ref('stg_salesorderheader')}}
    where creditcardid is not null
)

, stg_creditcard as (
    select 
        creditcardid
        , cardtype
        , cardnumber
        , expmonth
        , expyear
    from {{ ref('stg_creditcard') }} 
    )

, dim_creditcard as (
    select
        row_number() over (order by stg_salesorderheader.creditcardid) as creditcard_sk
        , stg_creditcard.cardtype
        , stg_creditcard.cardnumber
        , stg_creditcard.expmonth
        , stg_creditcard.expyear
    from stg_salesorderheader
    left join stg_creditcard on stg_salesorderheader.creditcardid = stg_creditcard.creditcardid
)

select *
from dim_creditcard