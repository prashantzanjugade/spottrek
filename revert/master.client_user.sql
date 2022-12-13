-- Revert spottrek:master.client_user from pg

BEGIN;

drop table master.client_user;

COMMIT;
