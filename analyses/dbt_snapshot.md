dbt snapshot is dbt way of handling type 2 scd by adding two fields dbt_valid_from and dbt_valid_to
- snapshot lives in snapshot folder
there is two strategy by which we can handle columns which we need to maintain
1. unique key and updated_at
2. check 
config
target_schema: 'schema_name'
unique_key = 'id'
strategy = 'timestamp'
update_at = 'updated_at'
invalidated_hard_deletes = True

update any source model and check 
update raw.globalmart.customers set country = 'Germany',
updated_at = CURRENT_TIMESTAMP() where customerid = '31'


