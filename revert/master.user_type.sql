-- Deploy spottrek:master.user_type to pg
-- requires: master

BEGIN;

	delete from master.user_type where name in ('Super Admin','Admin','Manager','BARC Operations','Agency Admin','Agency End User','Broadcaster Admin','Broadcaster End User','Advertiser Admin','Advertiser End User','Other Admin','Other End User');

COMMIT;
