-- Deploy spottrek:master.advertiser to pg

BEGIN;

create table master.advertiser (
	  id serial,
	  advertiser text,
	  advertisercode integer,
	  advertisinggroup_id integer,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  foreign key (advertisinggroup_id) references master.advertisinggroup (id)
);

COMMIT;
