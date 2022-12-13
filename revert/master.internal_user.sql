-- Revert spottrek:master.internal_user from pg

BEGIN;

drop table master.internal_user;

COMMIT;
