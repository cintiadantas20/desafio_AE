with stg_salesorderheader as(
    select
        distinct(shiptoaddressid)
    from {{ ref('stg_salesorderheader')}}
)

, int_location as (
    select
        addressid 
	    , addressline1
	    , addressline2 
	    , city 
	    , stateprovinceid 
	    , postalcode 
	    , stateprovincecode 
	    , countryregioncode 
	    , statename
	    , territoryid
	    , countryname
    from {{ ref('int_location') }}
)

, dim_location as (
    select
		row_number() over (order by stg_salesorderheader.shiptoaddressid) as location_sk
	    , addressline1
	    , city 
	    , postalcode 
	    , statename
	    , countryname
    from stg_salesorderheader
    left join int_location on stg_salesorderheader.shiptoaddressid = int_location.addressid
)

select *
from dim_location