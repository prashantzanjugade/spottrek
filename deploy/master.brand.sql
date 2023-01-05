-- Deploy spottrek:master.brand to pg

BEGIN;

create table master.brand (
	  id serial,
	  brandname text,
	  brandnamecode integer,
	  brandsector_id integer,
	  brandcategory_id integer,
	  advertiser_id integer,
	  descriptor_id integer,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  foreign key (brandsector_id) references master.brandsector (id),
	  foreign key (brandcategory_id) references master.brandcategory (id),
	  foreign key (advertiser_id) references master.advertiser (id),
	  foreign key (descriptor_id) references master.descriptor (id)
);

COMMIT;
