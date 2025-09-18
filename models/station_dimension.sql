with BIKE as(
    select 
        start_statio_id as station_id,
        start_station_name, 
        start_lat, 
        start_Lng
    from {{ ref('stg_bike') }}
    where RIDE_ID not in('ride_id', 'bikeid')
)
select * from BIKE