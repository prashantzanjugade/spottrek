-- Deploy spottrek:master.page to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS master;

create table master.page (
	  id serial,
	  name varchar(100) not null,
	  remarks text,
	  created_on timestamp default now(),
	  primary key (id)
);

COMMIT;
