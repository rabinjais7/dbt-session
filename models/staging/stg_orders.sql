
{{
    config(
        materialized='view'
    )
}}

select *, 
ordersellingprice- ordercostprice as orderprofit
from {{ ref('raw_orders') }}