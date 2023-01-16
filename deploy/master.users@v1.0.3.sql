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
--alter table master.users drop constraint users_created_by;

alter table master.users drop constraint users_user_type_fkey;

INSERT INTO master.users ("name", email, user_type, created_by) VALUES('sysuser', '', 1, 1);

INSERT INTO master.users ("name", email, user_type, created_by) VALUES('superadmin', '', 1, 1);

ALTER TABLE master.users ADD CONSTRAINT users_user_type_fkey FOREIGN KEY (user_type) REFERENCES master.user_type(id);

COMMIT;
