with
    sources as (
        select 
          customerid
          , personid
          , storeid
          , territoryid
          , rowguid
          , modifieddate
        from {{ source('dbt_cintia', 'customer') }} 
    )

select *
from sources