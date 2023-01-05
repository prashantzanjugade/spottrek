-- Verify spottrek:master.contenttype on pg

BEGIN;

select
  id,
  contenttype,
  contenttypecode,
  created_on
from master.contenttype
where false;

ROLLBACK;
