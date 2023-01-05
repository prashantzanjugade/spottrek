-- Revert spottrek:master.promocategory from pg

BEGIN;

DROP TABLE master.promocategory;

COMMIT;
