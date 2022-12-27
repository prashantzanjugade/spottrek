-- Verify spottrek:master.client on pg

BEGIN;

select
  status,
  suspend_date
from master.client
where false;

ROLLBACK;
