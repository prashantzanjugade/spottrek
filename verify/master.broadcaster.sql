-- Verify spottrek:master.broadcaster on pg

BEGIN;

select
  id,
  broadcastercode,
  created_on
from master.broadcaster
where false;

ROLLBACK;
