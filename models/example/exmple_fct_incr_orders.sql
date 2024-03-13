{{
    config(
        materialized='incremental',
        on_schema_changed = 'fail'
    )
}}

with example_src_orders as (
    select * from {{ source('example_globalmart', 'order_example_1') }}
)

select * from example_src_orders
{% if is_incremental() %}
    AND updated_at > (select max(updated_at) from {{this}})
{% endif %}