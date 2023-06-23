with
    sources as (
        select 
          salesreasonid
          , name as reasonname
          , reasontype
          , modifieddate
        from `desafioaeadw`.`dbt_cintia`.`salesreason` 
    )

select *
from sources