-- Deploy spottrek:master.user_page_permission to pg
-- requires: master.users
-- requires: master.page
-- requires: master.client

BEGIN;

ALTER TABLE master.user_page_permission DROP CONSTRAINT user_page_permission_created_by_fkey;
ALTER TABLE master.user_page_permission ADD CONSTRAINT user_page_permission_created_by_fkey FOREIGN KEY (created_by) REFERENCES master.client(id)

COMMIT;
