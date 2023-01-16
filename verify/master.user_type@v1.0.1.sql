BEGIN;

select * from master.user_type where false;

--select * from master.user_type where name= ('Super Admin','Admin','Manager','BARC Operations','Agency Admin','Agency End User','Broadcaster Admin','Broadcaster End User','Advertiser Admin','Advertiser End User','Other Admin','Other End User');

COMMIT;
