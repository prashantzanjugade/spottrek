-- Deploy spottrek:master.programtheme to pg

BEGIN;

create table master.programtheme (
	  id serial,
	  programthemecode integer,
	  programtheme text,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
