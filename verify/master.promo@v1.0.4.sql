-- Verify spottrek:master.promo on pg

BEGIN;

select
  id,
  brand_id,
  title,
  titlecode,
  created_on
from master.promo
where false;

ROLLBACK;
