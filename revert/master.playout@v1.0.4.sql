-- Revert spottrek:master.playout from pg

BEGIN;

DROP TABLE master.playout;
--ALTER TABLE master.playout RENAME COLUMN broadcaster_cd to broadcaster_id;

COMMIT;
