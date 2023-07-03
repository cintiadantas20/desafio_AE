with
    sources as (
        select 
          salesorderid
          , salesreasonid 
          , modifieddate
        from {{ source('dbt_cintia', 'salesorderheadersalesreason') }} 
    )

select *
from sources