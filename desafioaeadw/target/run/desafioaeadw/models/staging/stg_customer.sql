
  
    

    create or replace table `desafioaeadw`.`dbt_cintia_staging`.`stg_customer`
    
    
    OPTIONS()
    as (
      with
    sources as (
        select 
          customerid
          , personid
          , storeid
          , territoryid
          , rowguid
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`customer` 
    )

select *
from sources
    );
  