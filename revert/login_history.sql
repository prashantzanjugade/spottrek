-- Revert spottrek:login_history from pg

BEGIN;

DROP TABLE login_history;

COMMIT;
