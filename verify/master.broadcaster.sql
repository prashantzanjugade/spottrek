-- Verify spottrek:master.broadcaster on pg

BEGIN;

select
  id serial,
  broadcastercode integer,
  created_on
from master.broadcaster
where false;

ROLLBACK;
