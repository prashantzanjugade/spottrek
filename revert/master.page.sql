-- Deploy spottrek:master.page to pg

BEGIN;

drop table if exists master.page;

COMMIT;
