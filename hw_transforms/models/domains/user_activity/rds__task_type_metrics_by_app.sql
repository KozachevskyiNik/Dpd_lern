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
    date_trunc('day', t.record_created_datetime) as day_of_task_creation,
    regexp_extract(t.task_type_id, '(.*)-', 1) as task_type,
    regexp_extract(t.task_type_id, '-(.*)', 1) as country,
    count(distinct t.task_id) as total_distinct_tasks_by_type
from {{ ref("rds__tasks_base") }} as t
where (t.source is null or t.source = 'Uploaded File')
group by 1, 2, 3, 4, 5

union

select
    tg.db_name,
    tg.farm_id,
    case
        when (tg.record_belongs_to_app = 'HERDWATCH')
        then 0
        when (tg.record_belongs_to_app = 'FLOCKWATCH')
        then 1
        when (tg.record_belongs_to_app is null or 'CROPWATCH')
        then 2
    end as origin_app_type,
    date_trunc('day', tg.record_created_datetime) as month_of_task_creation,
    regexp_extract(tg.task_type_id, '(.*)-', 1) as task_type,
    regexp_extract(tg.task_type_id, '-(.*)', 1) as country,
    count(distinct tg.task_id) as total_distinct_tasks_by_type
from {{ ref("rds__tasks_general_base") }} as tg
group by 1, 2, 3, 4, 5
