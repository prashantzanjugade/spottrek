-- Revert spottrek:master.advertisement from pg

BEGIN;

DROP TABLE master.advertisement;

COMMIT;
