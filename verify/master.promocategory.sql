-- Verify spottrek:master.promocategory on pg

BEGIN;

select
  id,
  promocategory,
  promocategorycode,
  created_on
from master.promocategory
where false;

ROLLBACK;
