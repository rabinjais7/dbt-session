
{{
    config(
        materialized='incremental'
    )
}}

-- select * from RAW.GLOBALMART.ORDERS

select * from 
{{ source('globalmart', 'orders') }}

{% if is_incremental() %}

where orderdate >= (select max(orderdate) from {{ this }} )



{% endif %}
