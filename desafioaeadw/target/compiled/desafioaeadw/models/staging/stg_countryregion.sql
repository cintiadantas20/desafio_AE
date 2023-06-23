with
    sources as (
        select 
          countryregioncode
          , name as countryname
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`countryregion` 
    )

select *
from sources