with
    sources as (
        select 
          businessentityid
          , name as storename
          , salespersonid
        from {{ source('dbt_cintia', 'store') }} 
    )

select *
from sources