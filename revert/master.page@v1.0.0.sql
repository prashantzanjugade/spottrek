-- Revert spottrek:master.page from pg

BEGIN;

DROP TABLE master.page;

COMMIT;
