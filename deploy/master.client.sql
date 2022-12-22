BEGIN;

	ALTER TABLE master.client ADD COLUMN suspend_date timestamp;
	ALTER TABLE master.client ADD COLUMN status smallint default 1;

	comment on column master.client.status is '1 for active, 0 for inactive';

COMMIT;
