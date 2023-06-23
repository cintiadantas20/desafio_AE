
    
    

with dbt_test__target as (

  select salesorderid as unique_field
  from `desafioaeadw`.`raw_tables`.`salesorderdetail`
  where salesorderid is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


