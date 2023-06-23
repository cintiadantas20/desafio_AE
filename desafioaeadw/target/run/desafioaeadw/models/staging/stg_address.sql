
  
    

    create or replace table `desafioaeadw`.`dbt_cintia_staging`.`stg_address`
    
    
    OPTIONS()
    as (
      with
    sources as (
        select 
          addressid
          , addressline1
          , addressline2
          , city
          , stateprovinceid
          , postalcode
          , spatiallocation
          , rowguid
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`address` 
    )

select *
from sources
    );
  