-- Deploy spottrek:master.promocategory to pg

BEGIN;

create table master.promocategory (
	  id serial,
	  promocategory text,
	  promocategorycode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
