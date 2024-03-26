with
    total_animals_in_herd as (
        select
            a.db_name,
            case
                when a.species = 'BOVINE' then 0 when a.species = 'OVINE' then 1
            end as origin_app_type,
            a.farm_id,
            count(a.animal_id) as total_animals_in_farm
        from {{ ref("rds__animals_base") }} as a
        where
            a.in_herd_flag = 1
            and a.moved_in_date between date_trunc(
                'year', date_add('year', -1, current_date)
            ) and date_trunc('year', current_date)
        group by 1, 2, 3
    ),
    total_paddocks_in_herd as (
        select
            p.db_name,
            p.farm_id,
            2 as origin_app_type,
            count(distinct p.paddock_id) as total_paddocks_in_farm
        from {{ ref("rds__paddocks_base") }} as p
        group by 1, 2
    ),
    total_tasks_by_app as (
        select
            t.db_name,
            t.farm_id,
            case
                when
                    (
                        t.record_belongs_to_app = 'HERDWATCH'
                        or t.species in ('BOVINE', 'CANINE', 'FOWL', 'FELINE', 'OTHER')
                    )
                then 0
                when (t.record_belongs_to_app = 'FLOCKWATCH' or t.species = 'OVINE')
                then 1
                when
                    (
                        t.task_type in (
                            'SPRAYUSAGE',
                            'CROPWATCH',
                            'FERTILISER_APPLICATION',
                            'FERTILISER_PURCHASE'
                        )
                    )
                then 2
            end as origin_app_type,
            date_trunc('month', t.record_created_datetime) as month_of_task_creation,
            count(distinct t.task_id) as total_tasks,
            count(distinct t.task_type_id) as total_distinct_tasks
        from {{ ref("rds__tasks_base") }} as t
        where (t.source is null or t.source = 'Uploaded File')
        group by 1, 2, 3, 4
        union
        select
            tg.db_name,
            tg.farm_id,
            case
                when (tg.record_belongs_to_app = 'HERDWATCH')
                then 0
                when (tg.record_belongs_to_app = 'FLOCKWATCH')
                then 1
                when (tg.record_belongs_to_app is null)
                then 2
            end as origin_app_type,
            date_trunc('month', tg.record_created_datetime) as month_of_task_creation,
            count(distinct tg.task_id) as total_tasks,
            count(distinct tg.task_type_id) as total_distinct_tasks
        from {{ ref("rds__tasks_general_base") }} as tg
        group by 1, 2, 3, 4
    )
-- extend with top N feature by app type
select
    uaf.db_name,
    uaf.user_id,
    uaf.farm_id,
    uaf.herd_number,
    uaf.national_herd_id,
    uaf.county,
    uaf.plan_type,
    case
        when uaf.farm_type = 'SHEEP_FARM'
        then 'flockwatch'
        when uaf.farm_type = 'CROP_FARM'
        then 'cropwatch'
        else 'herdwatch'
    end as origin_app_type,
    uaf.farm_option,
    uaf.farm_level,
    uaf.farm_band,
    tah.total_animals_in_farm,
    tph.total_paddocks_in_farm,
    tta.month_of_task_creation,
    tta.total_tasks,
    tta.total_distinct_tasks
from total_tasks_by_app as tta
left join
    {{ ref("rds__user_and_farm_base") }} as uaf
    on tta.db_name = uaf.db_name
    and tta.farm_id = uaf.farm_id
    and tta.origin_app_type = uaf.farm_app_type
left join
    total_animals_in_herd as tah
    on tah.db_name = tta.db_name
    and tah.farm_id = tta.farm_id
    and tah.origin_app_type = tta.origin_app_type
left join
    total_paddocks_in_herd as tph
    on tph.db_name = tta.db_name
    and tph.farm_id = tta.farm_id
    and tph.origin_app_type = tta.origin_app_type
