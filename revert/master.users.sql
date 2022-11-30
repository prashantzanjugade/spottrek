-- Revert spottrek:master.users from pg

BEGIN;

DROP TABLE IF EXISTS master.users CASCADE;

COMMIT;
