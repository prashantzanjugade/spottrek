-- Deploy spottrek:master.brandcategory to pg

BEGIN;

create table master.brandcategory (
	  id serial,
	  brandcategory text,
	  brandcategorycode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id)
);

COMMIT;
