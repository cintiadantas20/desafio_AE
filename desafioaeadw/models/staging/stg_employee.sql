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
        from {{ source('dbt_cintia', 'employee') }} 
    )

select *
from sources