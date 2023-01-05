-- Verify spottrek:master.brandcategory on pg

BEGIN;

select
  id,
  brandcategory,
  brandcategorycode,
  created_on
from master.brandcategory
where false;

ROLLBACK;
