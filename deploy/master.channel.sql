-- Deploy spottrek:master.channel to pg

BEGIN;

create table master.channel (
	  id serial,
	  channel text,
	  channelcode integer,
	  network_id integer,
	  contentlanguage_id integer,
	  region_id integer,
	  genre_id integer,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  foreign key (network_id) references master.network (id),
	  foreign key (contentlanguage_id) references master. contentlanguage (id),
	  foreign key (region_id) references master.region (id),
	  foreign key (genre_id) references master.programgenre (id)
);

COMMIT;
