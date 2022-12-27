BEGIN;

	ALTER TABLE master.client ADD COLUMN modified_on timestamp;
	ALTER TABLE master.client ADD COLUMN modified_by smallint;

COMMIT;
