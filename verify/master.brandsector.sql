-- Verify spottrek:master.brandsector on pg

BEGIN;

select
  id,
  brandsector,
  brandsectorcode,
  created_on
from master.brandsector
where false;

ROLLBACK;
