-- Deploy spottrek:master.users to pg
-- requires: master.user_type

BEGIN;

	ALTER TABLE master.users ADD COLUMN modified_on timestamp;
	ALTER TABLE master.users ADD COLUMN modified_by smallint;

COMMIT;
