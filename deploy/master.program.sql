-- Deploy spottrek:master.program to pg

BEGIN;

create table master.program (
	  id serial,
	  channel_id integer,
	  title text,
	  titlecode integer,
	  programtheme_id integer,
	  programgenre_id integer,
	  productionhouse text,
	  prodhouse integer,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  foreign key (channel_id) references master.channel (id),
	  foreign key (programtheme_id) references master.programtheme (id),
	  foreign key (programgenre_id) references master.programgenre (id)
);

COMMIT;
