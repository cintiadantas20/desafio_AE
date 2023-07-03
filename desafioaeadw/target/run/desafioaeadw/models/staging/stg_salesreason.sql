

  create or replace view `desafioaeadw`.`dbt_cintia_staging`.`stg_salesreason`
  OPTIONS()
  as with
    sources as (
        select 
          salesreasonid
          , name as reasonname
          , reasontype
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`salesreason` 
    )

select *
from sources;

