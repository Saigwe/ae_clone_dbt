select
  account_id as account_id,
  reopened_at as reopened_at
from {{ source('monzo_datawarehouse', 'account_reopened') }}