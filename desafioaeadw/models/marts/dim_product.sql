with int_salesorderdetail as (
    select
        distinct(productid)
    from {{ ref('int_salesorderdetail')}}   
)

, int_product as (
    select
        productid 
        , productname
        , productnumber 
        , standardcost 
        , listprice 
        , subcategoryname
        , categoryname
    from {{ ref('int_product') }}
)

, dim_product as (
    select 
        productid
        , int_product.productname
        , int_product.standardcost 
        , int_product.listprice 
        , int_product.subcategoryname
        , int_product.categoryname
    from int_salesorderdetail
    left join int_product on int_salesorderdetail.productid = int_product.productid
)

select *
from dim_product