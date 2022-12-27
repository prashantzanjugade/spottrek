-- Verify spottrek:master.users on pg

BEGIN;

select
/*  id,
  name,
  email,
  user_type,
  password,
  department,
  client_id,
  is_all_advertiser,
  created_on,
  created_by,
  status
*/
*
from master.users
where false;

ROLLBACK;
