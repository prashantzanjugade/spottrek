-- Verify spottrek:master.program on pg

BEGIN;

select
  id,
  channel_id,
  title,
  titlecode,
  programtheme_id,
  programgenre_id,
  productionhouse,
  prodhouse,
  created_on
from master.program
where false;

ROLLBACK;
