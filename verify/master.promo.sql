-- Verify spottrek:master.promo on pg

BEGIN;

select
  id,
  brandname,
  brandnamecode,
  title,
  titlecode,
  brandsector,
  brandsectorcode,
  brandcategory,
  brandcategorycode,
  advertiser,
  advertisercode,
  advertisinggroup,
  advertisinggroupcode,
  descriptor,
  descriptorcode,
  created_on
from master.promo
where false;

ROLLBACK;
