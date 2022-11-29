-- Verify spottrek:login_history on pg

BEGIN;

select
  id bigserial,
  users_id,
  token,
  session_type session_type_mst,
  user_agent,
  ip_address,
  viewport_width,
  viewport_height,
  created_on
from login_history
where false;

ROLLBACK;
