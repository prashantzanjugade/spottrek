-- Deploy spottrek:master.users to pg
-- requires: master.user_type

BEGIN;

create table master.users (
	  id bigserial,
	  name varchar(100) not null,
	  email varchar(100) not null,
	  user_type integer not null,
	  password varchar(50) not null,
	  department varchar(100),
	  client_id integer,
	  is_all_advertiser boolean not null,
	  created_on timestamp default now(),
	  created_by integer not null,
	  primary key (id),
	  foreign key (user_type) references master.user_type (id)
);

COMMIT;
