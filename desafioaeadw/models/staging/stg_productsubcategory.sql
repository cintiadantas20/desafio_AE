with
    sources as (
        select 
            productsubcategoryid
            , productcategoryid
            , name as subcategoryname
        from {{ source('dbt_cintia', 'productsubcategory') }} 
    )

select *
from sources