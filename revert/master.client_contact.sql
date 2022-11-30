-- Revert spottrek:master.client_contact from pg

BEGIN;

DROP TABLE IF EXISTS master.client_contact;

COMMIT;
