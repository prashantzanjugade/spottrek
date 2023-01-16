-- Revert spottrek:master.broadcaster from pg

BEGIN;

DROP TABLE master.broadcaster;

COMMIT;
