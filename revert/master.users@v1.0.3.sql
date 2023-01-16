-- Deploy spottrek:master.users to pg
-- requires: master.user_type

BEGIN;

alter table master.users drop column status;
alter table master.users add column password text;
alter table master.users add column department text;
alter table master.users add column client_id bigint;
alter table master.users add column is_all_advertiser boolean;

ALTER TABLE master.users ADD CONSTRAINT users_client_id foreign key (client_id) references master.client (id);
--ALTER TABLE master.users ADD CONSTRAINT users_created_by foreign key (created_by) references master.users (id);

TRUNCATE TABLE master.users restart identity CASCADE;

COMMIT;
