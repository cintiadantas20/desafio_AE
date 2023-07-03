with salesperson as (
    select 
        businessentityid
        , territoryid
        , salesquota
        , bonus
        , commissionpct
        , salesytd
        , saleslastyear
    from {{ ref('stg_salesperson') }}
)

, employee as (
    select 
        businessentityid
        , jobtitle
        , birthdate
        , gender
        , hiredate
    from {{ ref('stg_employee') }}
)

, person as (
    select 
        businessentityid
        , concat(ifnull(firstname,' '),' ',ifnull(middlename,' '),' ',ifnull(lastname,' ')) as fullname
        , persontype
        , emailpromotion
    from {{ ref('stg_person') }}
)

, employee_join as (
    select
        salesperson.businessentityid 
        , salesperson.territoryid 
        , salesperson.salesquota 
        , salesperson.bonus 
        , salesperson.commissionpct 
        , salesperson.salesytd 
        , salesperson.saleslastyear
        , employee.jobtitle 
        , employee.birthdate 
        , employee.gender 
        , employee.hiredate 
        , person.fullname
        , person.persontype 
        , person.emailpromotion
    from salesperson
    left join employee on salesperson.businessentityid = employee.businessentityid 
    left join person on salesperson.businessentityid = person.businessentityid

)

select *
from employee_join