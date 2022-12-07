-- Deploy spottrek:master.users to pg
-- requires: master.user_type

BEGIN;

alter table master.users add column status smallint;

comment on column master.users.status is '1 for active, 0 for inactive';

COMMIT;
