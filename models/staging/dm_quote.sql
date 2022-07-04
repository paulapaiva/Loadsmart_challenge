with
    csv_data as (
        select 
            lane,
            quote_date ,
            pickup_appointment_time ,
            delivery_appointment_time,
            shipper_name,
            equipment_type,
            mileage,
            source_price ,
            loadsmart_id,
            vip_carrier,
            has_mobile_app_tracking,
            has_macropoint_tracking,
            has_edi_tracking,
            contracted_load
        from {{ ref('DataChallenge')}}
    ),

    dm_quote as (
        select 
            -- split
            lane as origin_city,
            --split
            'split_lane' as delivery_city,
            quote_date ,
            pickup_appointment_time ,
            delivery_appointment_time,
            shipper_name,
            equipment_type
            mileage,
            source_price,
            loadsmart_id,
            vip_carrier,
            has_mobile_app_tracking,
            has_macropoint_tracking,
            has_edi_tracking,
            contracted_load
        from  csv_data

    )

select * from dm_quote