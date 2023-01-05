-- Deploy spottrek:master.broadcaster to pg

BEGIN;

create table master.broadcaster (
	  id serial,
	  broadcastercode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
