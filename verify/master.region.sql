-- Verify spottrek:master.region on pg

BEGIN;

select
  id,
  region,
  regioncode,
  created_on
from master.region
where false;

ROLLBACK;
