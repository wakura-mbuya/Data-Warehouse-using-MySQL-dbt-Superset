with source_data_cast as (
    select *
    from {{ source('traffic_dwh', 'traffic_flow') }}
),
final as (
    select id,
        track_id,
        vehicle_types as vehicle_type,
        cast(traveled_d as float) as traveled_d,
        avg_speed
    from source_data_cast
)
SELECT *
FROM final