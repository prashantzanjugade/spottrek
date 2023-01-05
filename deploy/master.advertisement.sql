-- Deploy spottrek:master.advertisement to pg

BEGIN;

create table master.advertisement (
	  id serial,
	  title text,
	  titlecode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
