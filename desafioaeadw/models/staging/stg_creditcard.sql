with
    sources as (
        select 
          creditcardid
          , cardtype
          , cardnumber
          , expmonth
          , expyear
        from {{ source('dbt_cintia', 'creditcard') }} 
    )

select *
from sources