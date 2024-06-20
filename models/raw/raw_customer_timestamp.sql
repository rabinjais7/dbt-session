select * from 
{{ source('globalmart', 'customer_with_timestamp') }}
