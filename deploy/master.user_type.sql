-- Deploy spottrek:master.user_type to pg
-- requires: master

BEGIN;

create table master.user_type (
	  id serial,
	  name varchar(100) not null,
	  remarks text,
	  created_on timestamp default now(),
	  primary key (id)
);

COMMIT;
