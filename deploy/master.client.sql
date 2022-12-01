-- Deploy spottrek:master.client to pg
-- requires: master.groups
-- requires: master.sub_group
-- requires: master.account_manager
-- requires: master.users

BEGIN;

/*
create table if not exists master.client (
	  id bigserial,
	  name varchar(100) not null,
	  group_id integer not null,
	  sub_group_id integer,
	  client_type integer not null, -- broadcaster, agency, advertiser, other
	  spots bigint not null,
	  account_manager_id integer not null,
	  finance_code varchar(50) not null,
	  address varchar(255) not null,
	  users integer not null,
	  auto_csv boolean not null,
	  userwise_subscription boolean not null,
	  tolerance_days smallint not null,
	  created_on timestamp default now(),
	  created_by integer not null,
	  primary key (id),
	  foreign key (group_id) references master.groups (id),
	  foreign key (sub_group_id) references master.sub_group (id),
	  foreign key (account_manager_id) references master.account_manager (id),
	  foreign key (created_by) references master.users (id)
);
*/

comment on column master.client.client_type is '1 for Advertiser, 2 for Broadcaster, 3 for Agency, 4 for Other';

--ALTER TABLE master.users ADD CONSTRAINT users_client_id foreign key (client_id) references master.client (id);
--ALTER TABLE master.users ADD CONSTRAINT users_created_by foreign key (created_by) references master.users (id);

COMMIT;
