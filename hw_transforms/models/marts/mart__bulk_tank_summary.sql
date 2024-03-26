with
    create_aggregates as (
        select
            amd.db_name,
            amd.farm_id,
            date_trunc('month', amd.record_date) as bulk_collection_month,
            sum(amd.bulk_tank_litres) as monthly_sum_litres,
            -- use nullif to cast zero values to null to get accurate avgs
            round(
                avg(cast(nullif(amd.bulk_tank_protein, 0) as double)), 2
            ) as monthly_avg_protein,
            round(
                avg(cast(nullif(amd.bulk_tank_fat, 0) as double)), 2
            ) as monthly_avg_fat,
            round(
                avg(cast(nullif(amd.bulk_tank_lactose, 0) as double)), 2
            ) as monthly_avg_lactose,
            round(
                avg(cast(nullif(amd.bulk_tank_solids, 0) as double))
            ) as monthly_avg_solids,
            round(avg(cast(nullif(amd.bulk_tank_scc, 0) as double))) as monthly_avg_scc,
            round(
                avg(cast(nullif(amd.bulk_tank_tbc, 0) as double)), 2
            ) as monthly_avg_tbc,
            round(
                avg(cast(nullif(amd.bulk_tank_urea, 0) as double)), 2
            ) as monthly_avg_urea,
            round(
                avg(cast(nullif(amd.bulk_tank_temperature, 0) as double)), 2
            ) as monthly_avg_temperature,
            round(
                avg(cast(nullif(amd.bulk_tank_thermoduric_count, 0) as double)), 2
            ) as monthly_avg_thermoduric_count,
            round(
                avg(cast(nullif(amd.bulk_tank_no_of_milking_cows, 0) as double))
            ) as monthly_avg_no_of_cows,
            round(
                avg(
                    cast(nullif(amd.kg_of_concentrate_fed_per_cow_per_day, 0) as double)
                )
            ) as monthly_avg_feed
        from {{ ref("rds__animal_milk_data") }} as amd
        group by amd.db_name, amd.farm_id, date_trunc('month', amd.record_date)
    )

select distinct
    {{
        dbt_utils.generate_surrogate_key(
            ["amd.db_name", "amd.task_id", "amd.farm_id"]
        )
    }} as uuid,
    amd.db_name,
    amd.task_id,
    amd.farm_id,
    amd.task_type,
    amd.record_date,
    ca.bulk_collection_month,
    amd.milk_coop,
    amd.supplier_number,
    avg(amd.bulk_tank_fat) over sum_same_day as bulk_tank_fat,
    avg(amd.bulk_tank_lactose) over sum_same_day as bulk_tank_lactose,
    avg(amd.bulk_tank_protein) over sum_same_day as bulk_tank_protein,
    avg(amd.bulk_tank_solids) over sum_same_day as bulk_tank_solids,
    sum(amd.bulk_tank_litres) over sum_same_day as bulk_tank_litres,
    avg(amd.bulk_tank_scc) over sum_same_day as bulk_tank_scc,
    avg(amd.bulk_tank_urea) over sum_same_day as bulk_tank_urea,
    avg(amd.bulk_tank_water) over sum_same_day as bulk_tank_water,
    avg(amd.bulk_tank_temperature) over sum_same_day as bulk_tank_temperature,
    avg(amd.bulk_tank_thermoduric_count) over sum_same_day
    as bulk_tank_thermoduric_count,
    avg(amd.bulk_tank_tbc) over sum_same_day as bulk_tank_tbc,
    avg(amd.bulk_tank_no_of_milking_cows) over sum_same_day
    as bulk_tank_no_of_milking_cows,
    avg(amd.bulk_tank_number_of_milkings_per_day) over sum_same_day
    as bulk_tank_number_of_milkings_per_day,
    avg(amd.kg_of_concentrate_fed_per_cow_per_day) over sum_same_day
    as kg_of_concentrate_fed_per_cow_per_day,
    ca.monthly_sum_litres,
    ca.monthly_avg_protein,
    ca.monthly_avg_fat,
    ca.monthly_avg_lactose,
    ca.monthly_avg_solids,
    ca.monthly_avg_scc,
    ca.monthly_avg_tbc,
    ca.monthly_avg_urea,
    ca.monthly_avg_temperature,
    ca.monthly_avg_thermoduric_count,
    ca.monthly_avg_no_of_cows,
    ca.monthly_avg_feed,
    round(
        if(
            ca.monthly_avg_no_of_cows is not null,
            ((ca.monthly_sum_litres / ca.monthly_avg_no_of_cows) / 30),
            null
        ),
        2
    ) as avg_litres_per_cow_per_day,
    round(
        if(
            avg(amd.bulk_tank_no_of_milking_cows) over sum_same_day is not null,
            (
                (
                    sum(amd.bulk_tank_litres) over sum_same_day
                    / avg(amd.bulk_tank_no_of_milking_cows) over sum_same_day
                ) / if(
                    max(amd.days_between_milkings) over sum_same_day > 10,
                    3,
                    max(amd.days_between_milkings) over sum_same_day
                )
            ),
            null
        ),
        2
    ) as avg_litres_per_cow_between_milkings,
    round(
        if(
            ca.monthly_avg_feed is not null,
            if(
                ca.monthly_avg_no_of_cows is not null,
                ((ca.monthly_sum_litres / ca.monthly_avg_no_of_cows) / 30),
                null
            )
            / monthly_avg_feed,
            null
        ),
        2
    ) as litres_per_kg,
    round(
        if(
            avg(amd.kg_of_concentrate_fed_per_cow_per_day) over sum_same_day
            is not null,
            (
                (
                    sum(amd.bulk_tank_litres) over sum_same_day
                    / avg(amd.bulk_tank_no_of_milking_cows) over sum_same_day
                )
                / avg(amd.kg_of_concentrate_fed_per_cow_per_day) over sum_same_day
            ),
            null
        ),
        2
    ) as litres_per_kg_between_milkings
from {{ ref("rds__animal_milk_data") }} as amd
left join
    create_aggregates as ca
    on amd.db_name = ca.db_name
    and amd.farm_id = ca.farm_id
    and date_trunc('month', amd.record_date) = ca.bulk_collection_month
window sum_same_day as (partition by amd.db_name, amd.farm_id, amd.record_date)
order by record_date, farm_id
