-- Deploy spottrek:master.brandsector to pg

BEGIN;

create table master.brandsector (
	  id serial,
	  brandsector text,
	  brandsectorcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
