-- Deploy spottrek:master.promo to pg

BEGIN;

drop table master.promo;

create table master.promo (
		    id bigserial,
	            brandname text,
		    brandnamecode integer,
		    title text,
		    titlecode integer,
		    brandsector text,
		    brandsectorcode integer,
		    brandcategory text,
		    brandcategorycode integer,
		    advertiser text,
		    advertisercode integer,
		    advertisinggroup text,
		    advertisinggroupcode integer,
		    descriptor text,
		    descriptorcode integer,
		    created_on timestamp default current_timestamp,
		    primary key (id)
			);

COMMIT;
