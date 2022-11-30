-- Revert spottrek:master.user_page_permission from pg

BEGIN;

DROP TABLE IF EXISTS master.user_page_permission;

COMMIT;
