-- Verify spottrek:master.network on pg

BEGIN;

select
  id,
  networkname,
  networkcode,
  created_on
from master.network
where false;

ROLLBACK;
