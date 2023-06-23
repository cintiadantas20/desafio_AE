with
    sources as (
        select 
          countryregioncode
          , name as countryname
          , modifieddate
        from {{ source('dbt_cintia', 'countryregion') }} 
    )

select *
from sources