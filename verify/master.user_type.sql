-- Verify spottrek:master.user_type on pg

BEGIN;

select id, name, remarks from master.user_type where false;

ROLLBACK;
