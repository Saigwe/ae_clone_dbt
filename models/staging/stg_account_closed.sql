select
  account_id as account_id,
  closed_at as closed_at
from {{ source('monzo_datawarehouse', 'account_closed') }}