-- Verify spottrek:master.internal_user on pg

BEGIN;

select
id,
department,
users_id
from master.internal_user;

ROLLBACK;
