-- Revert spottrek:master.promo from pg

BEGIN;

DROP TABLE master.promo;

COMMIT;
