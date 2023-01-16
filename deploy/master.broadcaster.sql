-- Deploy spottrek:master.broadcaster to pg

BEGIN;

drop table master.broadcaster cascade;

COMMIT;
