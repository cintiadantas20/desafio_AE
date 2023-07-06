
  
    

    create or replace table `desafioaeadw`.`dbt_cintia_staging`.`stg_person`
    
    
    OPTIONS()
    as (
      with
    sources as (
        select 
          businessentityid
          , persontype
          , namestyle
          , title
          , firstname
          , middlename
          , lastname
          , suffix
          , emailpromotion
          , additionalcontactinfo
          , demographics
          , rowguid
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`person` 
    )

select *
from sources
    );
  