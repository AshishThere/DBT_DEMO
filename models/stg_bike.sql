with bike as (
    select ride_id,
           replace(started_at,'"','') as started_at,
           replace(ended_at,'"','') as ended_at,
           replace(start_station_name,'"','') as start_station_name,
           start_statio_id,
           replace(end_station_name,'"','') as end_station_name,
           end_station_id,
           start_lat,
           start_lng,
           end_lat,
           end_lng,
           replace(Member_Casual,'"','') as Member_Casual
    from {{ source('demo', 'bike') }}
    where ride_id != 'bikeid' and ended_at != 'stoptime'
)
select * from bike