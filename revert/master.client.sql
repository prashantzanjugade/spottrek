BEGIN;

	ALTER TABLE master.client DROP COLUMN modified_on;
	ALTER TABLE master.client DROP COLUMN modified_by;

COMMIT;
