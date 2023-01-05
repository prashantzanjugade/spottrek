-- Verify spottrek:master.brand on pg

BEGIN;

select
  id,
  brandname,
  brandnamecode,
  brandsector_id,
  brandcategory_id,
  advertiser_id,
  descriptor_id,
  created_on
from master.brand
where false;


ROLLBACK;
