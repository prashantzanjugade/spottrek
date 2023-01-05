-- Deploy spottrek:master.region to pg

BEGIN;

create table master.region (
	  id serial,
	  region text,
	  regioncode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
