-- Deploy spottrek:master.users to pg
-- requires: master.user_type

BEGIN;

        ALTER TABLE master.users DROP COLUMN modified_on;
        ALTER TABLE master.users DROP COLUMN modified_by;

COMMIT;
