
  
    

    create or replace table `desafioaeadw`.`dbt_cintia_staging`.`stg_employee`
    
    
    OPTIONS()
    as (
      with
    sources as (
        select 
          businessentityid
          , nationalidnumber
          , loginid
          , jobtitle
          , birthdate
          , maritalstatus
          , gender
          , hiredate
          , salariedflag
          , vacationhours
          , sickleavehours
          , currentflag
          , rowguid
          , modifieddate
          , organizationnode
        from `desafioaeadw`.`dbt_cintia`.`employee` 
    )

select *
from sources
    );
  