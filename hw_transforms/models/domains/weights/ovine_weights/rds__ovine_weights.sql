with
    get_ovine_group_names as (
        select
            t.db_name,
            t.record_belongs_to_app as origin_app,
            t.task_id,
            t.task_name as group_name,
            if(
                (t.task_type is null),
                replace(t.task_type_id, '\-(.*)', ''),
                t.task_type
            ) as task_type,
            t.record_date as group_created_date,
            t.farm_id,
            t.animal_id

        from {{ ref("rds__tasks_base") }} as t
        inner join
            {{ ref("rds__animals_base") }} as a
            on t.db_name = a.db_name
            and t.animal_id = a.animal_id
            and a.off_herd_date is null
            and t.species = 'OVINE'
            and (
                t.task_type_id
                in ('GROUP-IE', 'GROUP-UK', 'GROUP-SC', 'GROUP-NI', 'GROUP-SC')
                or t.task_type = 'GROUP'
            )
    ),
    get_avg_age_offherd as (
        select distinct
            a.db_name,
            a.farm_id,
            avg(
                date_diff(
                    'day', nullif(a.dob_date, date('1970-01-01')), a.off_herd_date
                )
            ) over group_by_herd as avg_offherd_age
        from {{ ref("rds__animals_base") }} as a
        where
            a.off_herd_date is not null
            and (
                date_trunc('year', a.off_herd_date)
                != date_trunc('year', date('1970-01-01'))
            )
            and a.species = 'OVINE'
        window group_by_herd as (partition by a.db_name, a.farm_id)
    ),
    get_avg_weight_offherd as (
        select distinct
            a.db_name,
            a.farm_id,
            avg(wt.last_weight) over group_by_herd as avg_offherd_weight
        from {{ ref("rds__animals_base") }} as a
        inner join
            {{ ref("rds__all_weight_tasks") }} as wt
            on a.db_name = wt.db_name
            and a.animal_id = wt.animal_id
            and a.off_herd_date is not null
            and (
                date_trunc('year', a.off_herd_date)
                != date_trunc('year', date('1970-01-01'))
            )
            and wt.species = 'OVINE'
        window group_by_herd as (partition by wt.db_name, wt.farm_id)
    )

select distinct
    wt.db_name,
    wt.origin_app,
    wt.species,
    wt.task_id,
    wt.animal_id,
    wt.farm_id,
    wt.country,
    wt.task_type,
    {{ cast_timestamp("gogn.group_created_date") }} as group_created_date,
    {{ cast_timestamp("wt.record_date") }} as weigh_date,
    wt.weight_on_date,
    wt.record_adg,
    wt.first_weight,
    wt.last_weight,
    wt.prev_weight,
    wt.weight_difference,
    wt.days_btwn_weighings,
    wt.days_lived_till_weighing,
    wt.days_btwn_movement_off,
    wt.inter_weighing_adg as adg,
    wt.in_herd_adg,
    wt.lifetime_adg_at_weighing as lifetime_adg,
    round(gaao.avg_offherd_age, 2) as avg_offherd_age,
    round(gawo.avg_offherd_weight, 2) as avg_offherd_weight,
    if((wt.record_date > gogn.group_created_date), gogn.group_name, null) as group_name

from {{ ref("rds__all_weight_tasks") }} as wt
left join
    get_ovine_group_names as gogn
    on wt.db_name = gogn.db_name
    and wt.animal_id = gogn.animal_id
    and wt.farm_id = gogn.farm_id
left join
    get_avg_age_offherd as gaao
    on wt.db_name = gaao.db_name
    and wt.farm_id = gaao.farm_id
left join
    get_avg_weight_offherd as gawo
    on wt.db_name = gawo.db_name
    and wt.farm_id = gawo.farm_id
where wt.species = 'OVINE'
