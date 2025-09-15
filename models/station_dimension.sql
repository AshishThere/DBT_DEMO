with BIKE as(
    select 
        start_statio_id as station_id,
        start_station_name, 
        start_lat, 
        start_Lng
    from {{ source('demo', 'bike') }}
    where RIDE_ID != 'ride_id'
)

select * from BIKE