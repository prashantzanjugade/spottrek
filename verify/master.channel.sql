-- Verify spottrek:master.channel on pg

BEGIN;

select
  id,
  channel,
  channelcode,
  network_id,
  contentlanguage_id,
  region_id,
  genre_id,
  created_on
from master.channel
where false;

ROLLBACK;
