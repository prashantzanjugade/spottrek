-- Verify spottrek:master.programtheme on pg

BEGIN;

select
  id,
  programthemecode,
  programtheme,
  created_on
from master.programtheme
where false;

ROLLBACK;
