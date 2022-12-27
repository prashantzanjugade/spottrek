-- Verify spottrek:master.users on pg

BEGIN;

select
modified_on,
modified_by
from master.users
where false;

ROLLBACK;
