with source_data as (
    select *
    from {{ref('vehicles_info')}}
),
final as (
    select 
    vehicle_type,
    SUM(traveled_d)
    from vehicles_info
    group by
    vehicle_type 

)
SELECT *
FROM final