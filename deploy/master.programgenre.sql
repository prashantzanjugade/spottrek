-- Deploy spottrek:master.programgenre to pg

BEGIN;

create table master.programgenre (
	  id serial,
	  programgenrecode integer,
	  programgenre text,
	  programtheme_id integer,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  foreign key (programtheme_id) references master.programtheme (id)
);

COMMIT;
