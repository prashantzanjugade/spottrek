BEGIN;
	
	ALTER TABLE master.client DROP COLUMN status;
	ALTER TABLE master.client DROP COLUMN suspend_date;

COMMIT;
