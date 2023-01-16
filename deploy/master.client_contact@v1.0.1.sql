BEGIN;

create table master.client_contact (
	     id bigserial,
	     client_id integer not null,
	     client_contact_type integer not null, -- mail authority, manager, spoc, etc
	     name varchar(100) not null,
	     designation varchar(100),
	     email varchar(50) not null,
	     mobile varchar(15),
	     created_on timestamp default now(),
	     primary key (id),
	     foreign key (client_id) references master.client(id)
);

COMMIT;
