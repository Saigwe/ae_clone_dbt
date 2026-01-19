select
  account_id as account_id,
  user_id as user_id,
  account_type,
  created_at as created_at
from {{ source('monzo_datawarehouse', 'account_created') }}
