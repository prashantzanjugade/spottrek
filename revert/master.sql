-- Revert spottrek:master from pg

BEGIN;

DROP SCHEMA master;

COMMIT;
