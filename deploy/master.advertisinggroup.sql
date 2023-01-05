-- Deploy spottrek:master.advertisinggroup to pg

BEGIN;

create table master.advertisinggroup (
	  id serial,
	  advertisinggroup text,
	  advertisinggroupcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
