-- Verify spottrek:master.client on pg

BEGIN;

select
  id bigserial,
  name,
  group_id,
  sub_group_id,
  client_type, -- broadcaster, agency, advertiser, other
  spots,
  account_manager_id,
  finance_code,
  address,
  users,
  auto_csv,
  userwise_subscription,
  tolerance_days,
  created_on,
  created_by
from master.client
where false;

ROLLBACK;
