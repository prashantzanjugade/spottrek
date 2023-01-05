-- Verify spottrek:master.advertisinggroup on pg

BEGIN;

select
  id,
  advertisinggroup,
  advertisinggroupcode,
  created_on
from master.advertisinggroup
where false;

ROLLBACK;
