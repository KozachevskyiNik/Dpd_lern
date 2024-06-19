with
    weight_aggregates as (
        select
            t.task_id,
            t.db_name,
            t.species,
            -- get get weight for first recorded weight
            min_by(t.weight_on_date, t.record_date) over weights_unordered
            as first_weight,
            min(t.record_date) over weights_unordered as first_weight_date,
            -- get get weight for last recorded weight
            max_by(t.weight_on_date, t.record_date) over weights_unordered
            as last_weight,
            -- get get weight for prev recorded weight
            lag(t.weight_on_date, 1, null) over weights_by_animal as prev_weight,
            lag(t.record_date, 1, null) over weights_by_animal as prev_weight_date,
            -- prev adg
            lag(t.lifetime_adg, 1, null) over weights_by_animal as prev_adg,
            -- inter weighing weight diff partitioned by animal
            (
                t.weight_on_date - lag(t.weight_on_date, 1, null) over weights_by_animal
            ) as weight_difference,
            -- date_diff between weighing partitioned by animal
            date_diff(
                'day', lag(t.record_date, 1, null) over weights_by_animal, t.record_date
            ) as days_btwn_weighings,
            -- date_diff between dob and weight date
            date_diff('day', a.dob_date, t.record_date) as days_lived_till_weighing,
            date_diff('day', a.moved_in_date, a.off_herd_date) as days_in_herd,
            -- date_diff between off_herd_date and record_date
            date_diff('day', t.record_date, a.off_herd_date) as days_btwn_movement_off

        from {{ ref("rds__tasks_base") }} as t
        left join
            {{ ref("rds__animals_base") }} as a
            on t.db_name = a.db_name
            and t.animal_id = a.animal_id
        where
            (
                t.task_type_id in (
                    'WEIGHTRECORDING-IE',
                    'WEIGHTRECORDING-UK',
                    'WEIGHTRECORDING-SC',
                    'WEIGHTRECORDING-NI',
                    'WEIGHTRECORDING-SC'
                )
                or t.task_type = 'WEIGHTRECORDING'
            )
            and t.animal_id is not null
        window
            weights_by_animal as (
                partition by t.db_name, t.animal_id order by record_date
            ),
            weights_unordered as (partition by t.db_name, t.animal_id)
    ),

    day_weight_column as (
        -- generate abs value between weigh dates and 200 day mark to use further
        -- downstream for calculating 200 day weight
        select
            task_id,
            db_name,
            if(
                species = 'BOVINE', abs(days_lived_till_weighing - 200), null
            ) as days_till_200,
            if(
                species = 'OVINE', abs(days_lived_till_weighing - 40), null
            ) as days_till_40,
            if(
                species = 'OVINE', abs(days_lived_till_weighing - 100), null
            ) as days_till_100,
            if(
                species = 'OVINE', abs(days_lived_till_weighing - 150), null
            ) as days_till_150,
            if(
                species = 'OVINE', abs(days_lived_till_weighing - 200), null
            ) as ov_days_till_200
        from weight_aggregates
    )

select
    t.country as country,
    t.db_name as db_name,
    t.task_id as task_id,
    t.animal_id as animal_id,
    t.task_type as task_type,
    t.farm_id as farm_id,
    t.record_belongs_to_app as origin_app,
    {{ cast_timestamp("t.record_date") }} as record_date,
    t.weight_on_date as weight_on_date,
    t.lifetime_adg as record_adg,
    t.species as species,
    -- get aggregates from cte
    wa.first_weight,
    {{ cast_timestamp("wa.first_weight_date") }} as first_weight_date,
    wa.last_weight as last_weight,
    wa.prev_weight as prev_weight,
    {{ cast_timestamp("wa.prev_weight_date") }} as prev_weight_date,
    wa.weight_difference as weight_difference,
    wa.days_btwn_weighings as days_btwn_weighings,
    wa.days_lived_till_weighing as days_lived_till_weighing,
    wa.days_btwn_movement_off as days_btwn_movement_off,
    if(wa.days_btwn_movement_off < 7, weight_on_date, null) as derived_live_wt,
    round(
        (
            wa.weight_difference
            / if(wa.days_btwn_weighings > 0, wa.days_btwn_weighings, 1)
        ),
        2
    ) as inter_weighing_adg,
    -- use defaults for male and female when bovine species can be extended to
    -- different defaults for other species
    case
        when a.sex = 'M' and a.species = 'BOVINE' and wa.days_lived_till_weighing > 0
        then round(((t.weight_on_date - 45.00) / wa.days_lived_till_weighing), 2)
        when a.sex = 'F' and a.species = 'BOVINE' and wa.days_lived_till_weighing > 0
        then round(((t.weight_on_date - 40.00) / wa.days_lived_till_weighing), 2)
        when a.sex = 'M' and a.species = 'OVINE' and wa.days_lived_till_weighing > 0
        then round(((t.weight_on_date - 6.00) / wa.days_lived_till_weighing), 2)
        when a.sex = 'F' and a.species = 'OVINE' and wa.days_lived_till_weighing > 0
        then round(((t.weight_on_date - 6.00) / wa.days_lived_till_weighing), 2)
    end as lifetime_adg_at_weighing,
    case
        when a.sex = 'M' and a.species = 'BOVINE' and wa.days_lived_till_weighing > 0
        then (t.weight_on_date - 45.00)
        when a.sex = 'F' and a.species = 'BOVINE' and wa.days_lived_till_weighing > 0
        then (t.weight_on_date - 40.00)
        when a.sex = 'M' and a.species = 'OVINE' and wa.days_lived_till_weighing > 0
        then (t.weight_on_date - 5.33)
        when a.sex = 'F' and a.species = 'OVINE' and wa.days_lived_till_weighing > 0
        then (t.weight_on_date - 5.33)
    end as lifetime_weight_gain,
    case
        when a.sex = 'M' and a.species = 'BOVINE' and wa.days_in_herd > 0
        then
            round(
                (
                    if(
                        wa.first_weight is not null,
                        wa.first_weight,
                        (t.weight_on_date - 45.00)
                    )
                    / wa.days_in_herd
                ),
                2
            )
        when a.sex = 'F' and a.species = 'BOVINE' and wa.days_in_herd > 0
        then
            round(
                (
                    if(
                        wa.first_weight is not null,
                        wa.first_weight,
                        (weight_on_date - 40.00)
                    )
                    / wa.days_in_herd
                ),
                2
            )
        when a.sex = 'M' and a.species = 'OVINE' and wa.days_in_herd > 0
        then
            round(
                (
                    if(
                        wa.first_weight is not null,
                        wa.first_weight,
                        (weight_on_date - 5.33)
                    )
                    / wa.days_in_herd
                ),
                2
            )
        when a.sex = 'F' and a.species = 'OVINE' and wa.days_in_herd > 0
        then
            round(
                (
                    if(
                        wa.first_weight is not null,
                        wa.first_weight,
                        (weight_on_date - 5.33)
                    )
                    / wa.days_in_herd
                ),
                2
            )
    end as in_herd_adg,
    case
        when a.sex = 'M' and a.species = 'BOVINE' and wa.days_in_herd > 0
        then
            if(wa.first_weight is not null, wa.first_weight, (t.weight_on_date - 45.00))

        when a.sex = 'F' and a.species = 'BOVINE' and wa.days_in_herd > 0
        then
            if(wa.first_weight is not null, wa.first_weight, (t.weight_on_date - 40.00))
        when a.sex = 'M' and a.species = 'OVINE' and wa.days_in_herd > 0
        then if(wa.first_weight is not null, wa.first_weight, (t.weight_on_date - 5.33))
        when a.sex = 'F' and a.species = 'OVINE' and wa.days_in_herd > 0
        then if(wa.first_weight is not null, wa.first_weight, (t.weight_on_date - 5.33))
    end as in_herd_weight_gain,
    wa.prev_adg,
    -- this will be used to calculate 200day weight by checking closest valid adg to
    -- x days
    dwc.days_till_200 as bov_days_till_200,
    dwc.days_till_40 as ov_days_till_40,
    dwc.days_till_100 as ov_days_till_100,
    dwc.days_till_150 as ov_days_till_150,
    dwc.ov_days_till_200 as ov_days_till_200

from {{ ref("rds__tasks_base") }} as t
left join
    {{ ref("rds__animals_base") }} as a
    on t.db_name = a.db_name
    and t.animal_id = a.animal_id
left join weight_aggregates as wa on t.db_name = wa.db_name and t.task_id = wa.task_id
left join
    day_weight_column as dwc on t.db_name = dwc.db_name and t.task_id = dwc.task_id
where
    (
        t.task_type_id in (
            'WEIGHTRECORDING-IE',
            'WEIGHTRECORDING-UK',
            'WEIGHTRECORDING-SC',
            'WEIGHTRECORDING-NI',
            'WEIGHTRECORDING-SC'
        )
        or t.task_type = 'WEIGHTRECORDING'
    )
    and t.task_animal_deleted = 0
