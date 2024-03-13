

select * from
{{ source('example_globalmart', 'order_example_1') }}

