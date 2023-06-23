
  
    

    create or replace table `desafioaeadw`.`dbt_cintia_staging`.`stg_countryregion`
    
    
    OPTIONS()
    as (
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
    );
  