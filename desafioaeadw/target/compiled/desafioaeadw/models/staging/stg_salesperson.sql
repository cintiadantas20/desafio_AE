with
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
from sources