
{{
    config(
        materialized='incremental'
    )
}}

select * from 
{{ source('globalmart', 'smallproductlist2') }}

{% if is_incremental() %}

where updated_at > (select max(updated_at) from {{ this }})
and is_valid is null


{% endif %}