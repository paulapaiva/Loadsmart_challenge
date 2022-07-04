-- Run this file to create the model

-- public.dm_quote definition

-- Drop table

-- DROP TABLE public.dm_quote;

CREATE TABLE public.dm_quote (
	origin_city varchar NOT NULL,
	delivery_city varchar NOT NULL,
	quote_date timestamp NOT NULL,
	pickup_appointment_time timestamp NOT NULL,
	delivery_appointment_time timestamp NOT NULL,
	shipper_name varchar NOT NULL,
	equipment_type varchar NOT NULL,
	mileage varchar NULL,
	source_price float4 NOT NULL,
	loadsmart_id int4 NOT NULL DEFAULT 0,
	vip_carrier bool NOT NULL DEFAULT false,
	has_mobile_app_tracking bool NOT NULL DEFAULT false,
	has_macropoint_tracking bool NOT NULL DEFAULT false,
	has_edi_tracking bool NOT NULL DEFAULT false,
	contracted_load bool NULL,
	CONSTRAINT dm_quote_pk PRIMARY KEY (loadsmart_id)
);



-- public.ft_shipment definition

-- Drop table

-- DROP TABLE public.ft_shipment;

CREATE TABLE public.ft_shipment (
	loadsmart_id int4 NOT NULL,
	book_date timestamp NOT NULL,
	pickup_date timestamp NOT NULL,
	delivery_date timestamp NOT NULL,
	book_price float4 NOT NULL,
	pnl float4 NOT NULL,
	carrier_rating int4 NULL,
	sourcing_channel varchar NULL,
	carrier_dropped_us_count int4 NULL,
	carrier_on_time_to_pickup bool NULL,
	carrier_on_time_to_delivery bool NULL,
	carrier_on_time_overall bool NULL,
	load_booked_autonomously bool NULL,
	load_sourced_autonomously bool NULL,
	load_was_cancelled bool NULL,
	carrier_name varchar NULL,
	source_date timestamp NULL,
	CONSTRAINT ft_shipment_pk PRIMARY KEY (loadsmart_id)
);


-- public.ft_shipment foreign keys

ALTER TABLE public.ft_shipment ADD CONSTRAINT ft_shipment_fk_1 FOREIGN KEY (loadsmart_id) REFERENCES public.dm_quote(loadsmart_id);
