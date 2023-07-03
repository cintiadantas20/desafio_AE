with
    sources as (
        select 
            productcategoryid
          , name as categoryname
        from {{ source('dbt_cintia', 'productcategory') }} 
    )

select *
from sources