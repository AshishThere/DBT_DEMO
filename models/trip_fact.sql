with trips as (
    select 
        RIDE_ID, 
        date(to_timestamp(started_at)) as Trip_date,
        start_statio_id as start_station_id,
        end_station_id,
        Member_Casual,
        timestampdiff(second, to_timestamp(started_at), to_timestamp(ended_at)) as trip_duration_seconds
    from {{ ref('stg_bike') }}
    where RIDE_ID != 'bikeid' and ended_at != 'stoptime'
)
select * from trips