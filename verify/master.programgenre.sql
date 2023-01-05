-- Verify spottrek:master.programgenre on pg

BEGIN;

select
  id,
  programgenrecode,
  programgenre,
  programtheme_id,
  created_on
from master.programgenre
where false;

ROLLBACK;
