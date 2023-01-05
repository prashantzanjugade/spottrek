-- Deploy spottrek:master.contentlanguage to pg

BEGIN;

create table master.contentlanguage (
	  id serial,
	  contentlanguagecode integer,
	  contentlanguage text,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
