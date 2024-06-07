{% snapshot scd_example_customer1 %}
{{
    config(
        target_schema = 'dbt_rjaiswal',
        unique_key = 'customerid',
        strategy = 'timestamp',
        updated_at = 'updated_at',
        invalidate_hard_deletes = True
    )
}}

select * from {{ source('example_globalmart', 'customer_example_1') }}

{% endsnapshot %}