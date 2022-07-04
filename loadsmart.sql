-- Run this file to create the model

CREATE TABLE public.dm_quote (
	origin_city varchar ,
	delivery_city varchar ,
	quote_date date ,
	pickup_appointment_time varchar ,
	delivery_appointment_time varchar ,
	shipper_name varchar ,
	equipment_type varchar,
	mileage varchar ,
	source_price float4,
	loadsmart_id int4,
	vip_carrier bool ,
	has_mobile_app_tracking bool ,
	has_macropoint_tracking bool ,
	has_edi_tracking bool ,
	contracted_load bool ,
	CONSTRAINT dm_quote_pk PRIMARY KEY (loadsmart_id)
);


CREATE TABLE public.ft_shipment (
	loadsmart_id int4 NOT NULL,
	book_date varchar ,
	pickup_date varchar,
	delivery_date varchar,
	book_price float4,
	pnl float4 ,
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
	source_date varchar NULL,
	CONSTRAINT ft_shipment_pk PRIMARY KEY (loadsmart_id)
);


-- public.ft_shipment foreign keys

ALTER TABLE public.ft_shipment ADD CONSTRAINT ft_shipment_fk_1 FOREIGN KEY (loadsmart_id) REFERENCES public.dm_quote(loadsmart_id);
