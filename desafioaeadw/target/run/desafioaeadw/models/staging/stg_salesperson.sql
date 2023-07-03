

  create or replace view `desafioaeadw`.`dbt_cintia_staging`.`stg_salesperson`
  OPTIONS()
  as with
    sources as (
        select 
          businessentityid
          , territoryid
          , salesquota
          , bonus
          , commissionpct
          , salesytd
          , saleslastyear
          , rowguid
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`salesperson` 
    )

select *
from sources;

