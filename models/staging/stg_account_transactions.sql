select
  account_id as account_id,
  activity_date as activity_date,
  transactions_num
from {{ source('monzo_datawarehouse', 'account_transactions') }}
