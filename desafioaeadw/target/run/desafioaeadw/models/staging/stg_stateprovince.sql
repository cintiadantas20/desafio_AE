

  create or replace view `desafioaeadw`.`dbt_cintia_staging`.`stg_stateprovince`
  OPTIONS()
  as with
    sources as (
        select 
          stateprovinceid
          , stateprovincecode
          , countryregioncode
          , isonlystateprovinceflag
          , name as statename
          , territoryid
          , rowguid
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`stateprovince` 
    )

select *
from sources;

