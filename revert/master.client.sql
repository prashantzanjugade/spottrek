-- Revert spottrek:master.client from pg

BEGIN;

DROP TABLE IF EXISTS master.client cascade;

COMMIT;
