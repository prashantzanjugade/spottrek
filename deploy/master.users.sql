-- Deploy spottrek:master.users to pg
-- requires: master.user_type

BEGIN;

alter table master.users add column status smallint;
alter table master.users drop column password;
alter table master.users drop column department;
alter table master.users drop column client_id;
alter table master.users drop column is_all_advertiser;

alter table master.users alter column status set default 1;
alter table master.users alter column created_on set default now();

comment on column master.users.status is '1 for active, 0 for inactive';

--alter table master.users drop constraint users_client_id;
alter table master.users drop constraint users_created_by;

COMMIT;
