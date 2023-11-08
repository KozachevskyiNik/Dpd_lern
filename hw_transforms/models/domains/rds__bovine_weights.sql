with
    get_bovine_group_names as (
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
        where
            t.species = 'BOVINE'
            and (
                t.task_type_id
                in ('GROUP-IE', 'GROUP-UK', 'GROUP-SC', 'GROUP-NI', 'GROUP-SC')
                or t.task_type = 'GROUP'
            )
            and t.farm_id = '8F6BDBEB-AD12-21E5-82F1-5FF6BB811272'
    ),
    get_avg_age_offherd as (
        select distinct
            a.db_name,
            a.farm_id,
            avg(date_diff('day', a.dob_date, a.off_herd_date)) over group_by_herd
            as avg_offherd_age
        from {{ ref("rds__animals_base") }} as a
        where
            a.off_herd_date is not null
            and (
                date_trunc('year', a.off_herd_date)
                != date_trunc('year', date('1970-01-01'))
            )
            and a.farm_id = '8F6BDBEB-AD12-21E5-82F1-5FF6BB811272'
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
            and wt.species = 'BOVINE'
        where a.farm_id = '8F6BDBEB-AD12-21E5-82F1-5FF6BB811272'
        window group_by_herd as (partition by wt.db_name, wt.farm_id)
    )

select
    wt.db_name,
    wt.origin_app,
    wt.species,
    wt.task_id,
    wt.animal_id,
    wt.farm_id,
    wt.country,
    wt.task_type,
    gbgn.task_id as group_task_id,
    gbgn.group_name,
    {{ cast_timestamp("gbgn.group_created_date") }} as group_created_date,
    {{ cast_timestamp("wt.record_date") }} as weigh_date,
    wt.weight_on_date,
    wt.record_adg,
    wt.last_weight,
    wt.prev_weight,
    wt.weight_difference,
    wt.days_btwn_weighings,
    wt.days_lived_till_weighing,
    wt.days_btwn_movement_off,
    wt.inter_weighing_adg,
    wt.lifetime_adg_at_weighing,
    wt.days_till_200,
    gaao.avg_offherd_age,
    round(gawo.avg_offherd_weight, 2) as avg_offherd_weight

from {{ ref("rds__all_weight_tasks") }} as wt
left join
    get_bovine_group_names as gbgn
    on wt.db_name = gbgn.db_name
    and wt.animal_id = gbgn.animal_id
    and wt.farm_id = gbgn.farm_id
left join
    get_avg_age_offherd as gaao
    on wt.db_name = gaao.db_name
    and wt.farm_id = gaao.farm_id
left join
    get_avg_weight_offherd as gawo
    on wt.db_name = gawo.db_name
    and wt.farm_id = gawo.farm_id
where wt.species = 'BOVINE'
