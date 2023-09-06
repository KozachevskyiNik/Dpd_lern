with
    weight_aggregates as (
        select
            t.task_id,
            t.db_name,
            -- get get weight for last recorded weight
            max_by(t.weight_on_date, t.record_date) over weights_unordered
            as last_weight,
            -- inter weighing weight diff partitioned by animal
            (
                t.weight_on_date - lag(t.weight_on_date, 1, null) over weights_by_animal
            ) as weight_difference,
            -- date_diff between weighing partitioned by animal
            date_diff(
                'day', lag(t.record_date, 1, null) over weights_by_animal, t.record_date
            ) as days_btwn_weighings,
            -- date_diff between dob and weighing partitioned by animal
            date_diff(
                'day', a.dob_date, lag(t.record_date, 1, null) over weights_by_animal
            ) as days_lived_till_weighing,
            -- date_diff between off_herd_date and record_date
            date_diff(
                'day',
                a.off_herd_date,
                lag(t.record_date, 1, null) over weights_by_animal
            ) as days_btwn_movement_off

        from {{ ref("rds__tasks_base") }} as t
        left join
            {{ ref("rds__animals_base") }} as a
            on t.db_name = a.db_name
            and t.animal_id = a.animal_id
        where t.task_type = 'WEIGHTRECORDING'
        window
            weights_by_animal as (
                partition by t.db_name, t.animal_id order by record_date
            ),
            weights_unordered as (partition by t.db_name, t.animal_id)
    ),

    two_hundred_day_pre_calc as (
        -- generate abs value between weigh dates and 200 day mark to use further
        -- downstream for calculating 200 day weight
        select task_id, db_name, abs(days_lived_till_weighing - 200) as days_till_200
        from weight_aggregates
    )

select
    t.country as country,
    t.db_name as db_name,
    t.task_id as task_id,
    t.animal_id as animal_id,
    t.task_type as task_type,
    t.farm_id as farm_id,
    {{ cast_timestamp("t.record_date") }} as record_date,
    t.weight_on_date as weight_on_date,
    t.lifetime_adg as lifetime_adg,
    a.species as species,
    a.sale_weight as live_weight,
    a.dead_weight as dead_weight,
    -- user and farm details
    uaf.city as city,
    uaf.herd_number as herd_number,
    uaf.farm_type as farm_type,
    uaf.farm_option as farm_option,
    uaf.farm_band as farm_band,
    uaf.farm_app_type as farm_app_type,
    uaf.user_id as user_id,
    -- get aggregates from cte
    wa.last_weight as last_weight,
    wa.weight_difference as weight_difference,
    wa.days_btwn_weighings as days_btwn_weighings,
    wa.days_lived_till_weighing as days_lived_till_weighing,
    wa.days_btwn_movement_off as days_btwn_movement_off,
    if(
        wa.days_btwn_movement_off < 7, weight_on_date, wa.last_weight
    ) as derived_live_wt,
    round((wa.weight_difference / wa.days_btwn_weighings), 2) as inter_weighing_adg,
    -- use defaults for male and female when bovine species can be extended to
    -- different defaults for other species
    case
        when a.sex = 'M' and a.species = 'BOVINE'
        then round(((weight_on_date - 45.00) / wa.days_lived_till_weighing), 2)
        when a.sex = 'F' and a.species = 'BOVINE'
        then round(((weight_on_date - 40.00) / wa.days_lived_till_weighing), 2)
    end as lifetime_adg_at_weighing,
    -- this will be used to calculate 200day weight by checking closest valid adg to
    -- 200 days
    thdpc.days_till_200 as days_till_200

from {{ ref("rds__tasks_base") }} as t
left join
    {{ ref("rds__animals_base") }} as a
    on t.db_name = a.db_name
    and t.animal_id = a.animal_id
    and t.task_type = 'WEIGHTRECORDING'
left join
    {{ ref("rds__user_and_farm_base") }} as uaf
    on t.farm_id = uaf.farm_id
    and t.db_name = uaf.db_name
left join weight_aggregates as wa on t.db_name = wa.db_name and t.task_id = wa.task_id
left join
    two_hundred_day_pre_calc as thdpc
    on t.db_name = thdpc.db_name
    and t.task_id = thdpc.task_id
where t.task_type = 'WEIGHTRECORDING' and uaf.farm_app_type = 1
