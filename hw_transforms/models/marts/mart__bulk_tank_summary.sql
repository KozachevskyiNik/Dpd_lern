with
    create_aggregates as (
        select
            amd.db_name,
            amd.farm_id,
            date_trunc('month', amd.record_date) as bulk_collection_month,
            sum(amd.bulk_tank_litres) as monthly_sum_litres,
            round(avg(amd.bulk_tank_protein)) as monthly_avg_protein,
            round(avg(amd.bulk_tank_fat)) as monthly_avg_fat,
            round(avg(amd.bulk_tank_lactose)) as monthly_avg_lactose,
            round(avg(amd.bulk_tank_solids)) as monthly_avg_solids,
            round(avg(amd.bulk_tank_scc)) as monthly_avg_scc,
            round(avg(amd.bulk_tank_tbc)) as monthly_avg_tbc,
            round(avg(amd.bulk_tank_urea)) as monthly_avg_urea,
            round(avg(amd.bulk_tank_temperature)) as monthly_avg_temperature,
            round(
                avg(amd.bulk_tank_thermoduric_count)
            ) as monthly_avg_thermoduric_count,
            round(avg(amd.bulk_tank_no_of_milking_cows)) as monthly_avg_no_of_cows,
            round(avg(amd.kg_of_concentrate_fed_per_cow_per_day)) as monthly_avg_feed
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
    amd.bulk_tank_fat,
    amd.bulk_tank_lactose,
    amd.bulk_tank_protein,
    amd.bulk_tank_solids,
    amd.bulk_tank_litres,
    amd.bulk_tank_scc,
    amd.bulk_tank_urea,
    amd.bulk_tank_water,
    amd.bulk_tank_temperature,
    amd.bulk_tank_thermoduric_count,
    amd.bulk_tank_tbc,
    amd.bulk_tank_no_of_milking_cows,
    amd.bulk_tank_number_of_milkings_per_day,
    amd.kg_of_concentrate_fed_per_cow_per_day,
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
    if(
        ca.monthly_avg_no_of_cows is not null,
        ((ca.monthly_sum_litres / ca.monthly_avg_no_of_cows) / 30),
        null
    ) as avg_litres_per_cow_per_day,
    if(
        ca.monthly_avg_feed is not null, ca.monthly_sum_litres / monthly_avg_feed, null
    ) as litres_per_kg
from {{ ref("rds__animal_milk_data") }} as amd
left join
    create_aggregates as ca
    on amd.db_name = ca.db_name
    and amd.farm_id = ca.farm_id
    and date_trunc('month', amd.record_date) = ca.bulk_collection_month
order by record_date, farm_id
