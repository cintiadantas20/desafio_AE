with
    sources as (
        select 
          stateprovinceid
          , stateprovincecode
          , countryregioncode
          , isonlystateprovinceflag
          , name as statename
          , territoryid
          , rowguid
          , modifieddate
        from {{ source('dbt_cintia', 'stateprovince') }} 
    )

select *
from sources