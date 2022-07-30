with source_data as (
    select *
    from {{ref('vehicles_info')}}
),
final as (
    select vehicle_type,
        AVG(avg_speed)
    from source_data
    group by vehicle_type
)
SELECT *
FROM final