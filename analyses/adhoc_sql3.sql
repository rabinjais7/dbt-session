select *
from {{ ref('raw_customers') }}
where customerid is not null