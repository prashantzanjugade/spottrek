-- Verify spottrek:master.advertiser on pg

BEGIN;

select
  id,
  advertiser,
  advertisercode,
  advertisinggroup_id,
  created_on
from master.advertiser
where false;

ROLLBACK;
