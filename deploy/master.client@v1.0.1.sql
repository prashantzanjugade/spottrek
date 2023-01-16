BEGIN;

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

COMMIT;
