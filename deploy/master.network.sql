-- Deploy spottrek:master.network to pg

BEGIN;

create table master.network (
	  id serial,
	  networkname text,
	  networkcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
