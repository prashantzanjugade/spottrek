-- Verify spottrek:master.advertisement on pg

BEGIN;

select
  id,
  title,
  titlecode,
  created_on
from master.advertisement
where false;

ROLLBACK;
