with
    milk_data as (
        select distinct
            t.db_name,
            t.task_id,
            t.farm_id,
            t.task_type,
            t.record_date,
            tbt.coop as milk_coop,
            tbt.supplier_number,
            tbt.fat as bulk_tank_fat,
            tbt.lactose as bulk_tank_lactose,
            tbt.protein as bulk_tank_protein,
            tbt.solids as bulk_tank_solids,
            tbt.litres as bulk_tank_litres,
            tbt.somatic_cell_count as bulk_tank_scc,
            tbt.urea as bulk_tank_urea,
            tbt.water as bulk_tank_water,
            tbt.temperature as bulk_tank_temperature,
            tbt.thermoduric_count as bulk_tank_thermoduric_count,
            tbt.total_bacteria_count as bulk_tank_tbc,
            tbt.number_of_milking_cows as bulk_tank_no_of_milking_cows,
            tbt.number_of_milkings_per_day as bulk_tank_number_of_milkings_per_day,

            {% if target.name == "beta" %}
                cast(null as double) as kg_of_concentrate_fed_per_cow_per_day
            {% else %}
                tbt.kg_of_concentrate_fed_per_cow_per_day
                as kg_of_concentrate_fed_per_cow_per_day
            {% endif %}

        from {{ ref("rds__tasks_base") }} as t
        inner join
            {% if target.name == "beta" %}
                {{ source("rds_beta", "beta_task_bulk_tank") }} as tbt
            {% else %} {{ source("rds_prod", "task_bulk_tank") }} as tbt
            {% endif %} on t.db_name = tbt.db and t.task_id = tbt.id
    )

select
    md.*,
    date_diff(
        'day', lag(md.record_date, 1, md.record_date) over day_diff, md.record_date
    ) as days_between_milkings
from milk_data as md
window day_diff as (partition by md.db_name, md.farm_id order by md.record_date asc)
