-- Deploy spottrek:master.users to pg
-- requires: master.user_type

BEGIN;

alter table master.users add column status smallint;
alter table master.users drop column password;
alter table master.users drop column department;
alter table master.users drop column client_id;
alter table master.users drop column is_all_advertiser;

comment on column master.users.status is '1 for active, 0 for inactive';

--alter table master.users drop constraint users_client_id;
alter table master.users drop constraint users_created_by;

COMMIT;
