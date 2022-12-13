-- Deploy spottrek:master.internal_user to pg

BEGIN;

create table master.internal_user (
	  id bigserial,
	  department varchar(100),
	  users_id bigint,
	  primary key (id),
	  foreign key (users_id) references master.users (id)
);

COMMIT;
