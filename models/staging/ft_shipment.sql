with
    csv_data as (
        select * 
        from {{ ref('DataChallenge')}}
    ),

    ft_shipment as (
        select 
            csv_data.loadsmart_id ,
            book_date,
            pickup_date,
            delivery_date,
            book_price ,
            pnl,
            carrier_rating ,
            sourcing_channel ,
            carrier_dropped_us_count,
            carrier_on_time_to_pickup,
            carrier_on_time_to_delivery ,
            carrier_on_time_overall ,
            load_booked_autonomously ,
            load_sourced_autonomously,
            load_was_cancelled ,
            carrier_name ,
            source_date 
        from  csv_data

    )

select * from ft_shipment