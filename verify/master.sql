-- Verify spottrek:master on pg

BEGIN;

SELECT 1/COUNT(*) FROM information_schema.schemata WHERE schema_name = 'master';

ROLLBACK;
