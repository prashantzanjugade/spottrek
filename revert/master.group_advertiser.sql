-- Revert spottrek:master.group_advertiser from pg

BEGIN;

DROP TABLE IF EXISTS master.group_advertiser;

COMMIT;
