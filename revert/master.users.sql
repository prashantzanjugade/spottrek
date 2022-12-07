-- Deploy spottrek:master.users to pg
-- requires: master.user_type

BEGIN;

alter table master.users drop column status;

COMMIT;
