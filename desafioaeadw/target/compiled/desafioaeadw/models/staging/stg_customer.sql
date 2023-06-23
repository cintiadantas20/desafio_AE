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