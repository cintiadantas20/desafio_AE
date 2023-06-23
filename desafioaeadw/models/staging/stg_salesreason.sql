with
    sources as (
        select 
          salesreasonid
          , name as reasonname
          , reasontype
          , modifieddate
        from {{ source('dbt_cintia', 'salesreason') }} 
    )

select *
from sources