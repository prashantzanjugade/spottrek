-- Revert spottrek:master.page from pg

BEGIN;

DROP TABLE IF EXISTS master.page;

COMMIT;
