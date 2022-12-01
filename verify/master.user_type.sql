-- Verify spottrek:master.user_type on pg

BEGIN;

select name from master.user_type;

ROLLBACK;
