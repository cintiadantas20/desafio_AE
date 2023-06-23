with
    sources as (
        select 
          businessentityid
          , territoryid
          , salesquota
          , bonus
          , commissionpct
          , salesytd
          , saleslastyear
          , rowguid
          , modifieddate
        from {{ source('dbt_cintia', 'salesperson') }} 
    )

select *
from sources