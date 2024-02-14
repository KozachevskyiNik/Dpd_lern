with
    get_login_frequency_metric as (
        select distinct
            glf.db_name,
            glf.farm_id,
            glf.user_id,
            case
                when (glf.origin_app_type = 'herdwatch')
                then 0
                when (glf.origin_app_type = 'flockwatch')
                then 1
                when (glf.origin_app_type = 'cropwatch')
                then 2
            end as origin_app_type,
            avg(glf.monthly_app_login) over partition_by_farm_type
            as avg_yearly_app_login
        from {{ ref("bq__get_login_frequency") }} as glf
        where
            (
                glf.month_date between date_trunc(
                    'month', date_add('year', -1, current_date)
                ) and date_trunc('month', current_date)
                or glf.month_date is null
            )
        window
            partition_by_farm_type as (
                partition by glf.db_name, glf.farm_id, glf.origin_app_type
            )
    ),
    get_avg_tasks as (
        select distinct
            tma.db_name,
            tma.farm_id,
            tma.origin_app_type,
            tma.total_animals_in_farm,
            tma.total_paddocks_in_farm,
            avg(tma.total_tasks) over partition_by_farm_type as avg_tasks_created,
            avg(tma.total_distinct_tasks) over partition_by_farm_type
            as avg_task_types_used
        from {{ ref("rds__task_metrics_by_app") }} as tma
        where
            tma.month_of_task_creation between date_trunc(
                'year', date_add('year', -1, current_date)
            ) and date_trunc('year', current_date)
        window
            partition_by_farm_type as (
                partition by tma.db_name, tma.farm_id, tma.origin_app_type
            )
    ),
    get_tasks_per_animal_metric as (
        select
            gat.db_name,
            gat.farm_id,
            case
                when (gat.origin_app_type = 'herdwatch')
                then 0
                when (gat.origin_app_type = 'flockwatch')
                then 1
                when (gat.origin_app_type = 'cropwatch')
                then 2
            end as origin_app_type,
            case
                when
                    (
                        gat.origin_app_type in ('herdwatch', 'flockwatch')
                        and gat.total_animals_in_farm is not null
                    )
                then (round((gat.avg_tasks_created / gat.total_animals_in_farm), 2))
                when
                    (
                        gat.origin_app_type = 'cropwatch'
                        and gat.total_paddocks_in_farm is not null
                    )
                then (round((gat.avg_tasks_created / gat.total_paddocks_in_farm), 2))
                else 0
            end as tasks_per_animal
        from get_avg_tasks as gat
    ),
    get_reports_by_app as (
        select distinct
            rma.db_name,
            rma.farm_id,
            rma.origin_app_type,
            if(
                count(rma.report_name) over partition_by_farm_type > 0, 1, 0
            ) as reports_used_flag,
            -- TODO: get distinct reports run
            count(rma.report_name) over partition_by_farm_type as total_reports_run
        from {{ ref("rds__report_metrics_by_app") }} as rma
        where
            rma.report_run_datetime between date_trunc(
                'year', date_add('year', -1, current_date)
            ) and date_trunc('year', current_date)
        window
            partition_by_farm_type as (
                partition by rma.db_name, rma.farm_id, rma.origin_app_type
            )
    ),
    get_task_types_report_metric as (
        select
            gat.db_name,
            gat.farm_id,
            case
                when (gat.origin_app_type = 'herdwatch')
                then 0
                when (gat.origin_app_type = 'flockwatch')
                then 1
                when (gat.origin_app_type = 'cropwatch')
                then 2
            end as origin_app_type,
            (
                if(
                    (gat.avg_task_types_used > 0)
                    and (gat.avg_task_types_used is not null),
                    gat.avg_task_types_used,
                    0
                ) + if(
                    (gra.total_reports_run > 0) and (gra.total_reports_run is not null),
                    1,
                    0
                )
            ) as task_types_and_reports
        from get_avg_tasks as gat
        left join
            get_reports_by_app as gra
            on gat.db_name = gra.db_name
            and gat.farm_id = gra.farm_id
            and gat.origin_app_type = gra.origin_app_type
    ),
    get_sub_rankings as (
        select
            lfm.db_name,
            lfm.farm_id,
            lfm.origin_app_type,
            if(
                (lfm.avg_yearly_app_login > 0)
                and (lfm.avg_yearly_app_login is not null),
                lfm.avg_yearly_app_login,
                0
            ) as yearly_app_login,
            if(
                (tam.tasks_per_animal > 0) and (tam.tasks_per_animal is not null),
                tam.tasks_per_animal,
                0
            ) as tasks_per_primary_unit,
            if(
                (trm.task_types_and_reports > 0)
                and (trm.task_types_and_reports is not null),
                trm.task_types_and_reports,
                0
            ) as task_types_and_reports,
            case
                when
                    (
                        (lfm.avg_yearly_app_login < 2)
                        or (lfm.avg_yearly_app_login is null)
                    )
                then 1
                when
                    (
                        (lfm.avg_yearly_app_login between 2 and 4)
                        and (lfm.avg_yearly_app_login is not null)
                    )
                then 2
                when
                    (
                        (lfm.avg_yearly_app_login between 4.1 and 8)
                        and (lfm.avg_yearly_app_login is not null)
                    )
                then 3
                when
                    (
                        (lfm.avg_yearly_app_login between 8.1 and 12)
                        and (lfm.avg_yearly_app_login is not null)
                    )
                then 4
                when
                    (
                        (lfm.avg_yearly_app_login > 12.1)
                        and (lfm.avg_yearly_app_login is not null)
                    )
                then 5
                else 0
            end as login_freq_metric,
            case
                when ((tam.tasks_per_animal = 0) or (tam.tasks_per_animal is null))
                then 1
                when
                    (
                        (tam.tasks_per_animal between 0.01 and 0.5)
                        and (tam.tasks_per_animal is not null)
                    )
                then 2
                when
                    (
                        (tam.tasks_per_animal between 0.51 and 1)
                        and (tam.tasks_per_animal is not null)
                    )
                then 3

                when
                    (
                        (tam.tasks_per_animal between 0.11 and 2)
                        and (tam.tasks_per_animal is not null)
                    )
                then 4
                when

                    ((tam.tasks_per_animal > 2) and (tam.tasks_per_animal is not null))
                    and (tam.tasks_per_animal is not null)
                then 5
                else 0
            end as tasks_per_primary_metric,
            case
                when
                    (
                        (trm.task_types_and_reports = 0)
                        or (trm.task_types_and_reports is null)
                    )
                then 1
                when
                    (
                        (trm.task_types_and_reports between 1 and 3)
                        and (trm.task_types_and_reports is not null)
                    )
                then 2
                when
                    (
                        (trm.task_types_and_reports between 3.01 and 5)
                        and (trm.task_types_and_reports is not null)
                    )
                then 3
                when
                    (
                        (trm.task_types_and_reports between 5.01 and 8)
                        and (trm.task_types_and_reports is not null)
                    )
                then 4
                when
                    (
                        (trm.task_types_and_reports > 8)
                        and (trm.task_types_and_reports is not null)
                    )
                then 5
                else 0
            end as task_types_and_reports_metric

        from get_login_frequency_metric as lfm
        left join
            get_tasks_per_animal_metric as tam
            on lfm.db_name = tam.db_name
            and lfm.farm_id = tam.farm_id
            and lfm.origin_app_type = tam.origin_app_type
        left join
            get_task_types_report_metric as trm
            on lfm.db_name = trm.db_name
            and lfm.farm_id = trm.farm_id
            and lfm.origin_app_type = trm.origin_app_type
    ),
    get_final_star_ranking as (
        select
            sr.db_name,
            sr.farm_id,
            sr.origin_app_type,
            sr.yearly_app_login,
            sr.tasks_per_primary_unit,
            sr.task_types_and_reports,
            sr.login_freq_metric,
            sr.tasks_per_primary_metric,
            sr.task_types_and_reports_metric,
            round(
                (
                    (
                        sr.login_freq_metric
                        + sr.tasks_per_primary_metric
                        + sr.task_types_and_reports_metric
                    )
                    / 3.0
                ),
                2
            ) as final_star_ranking
        from get_sub_rankings as sr
    )

select
    uaf.db_name,
    current_date as ranking_date,
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
    fsr.yearly_app_login,
    fsr.tasks_per_primary_unit,
    fsr.task_types_and_reports,
    fsr.login_freq_metric,
    fsr.tasks_per_primary_metric,
    fsr.task_types_and_reports_metric,
    round(fsr.final_star_ranking, 2) as final_star_ranking
from get_final_star_ranking as fsr
left join
    {{ ref("rds__user_and_farm_base") }} as uaf
    on fsr.db_name = uaf.db_name
    and fsr.farm_id = uaf.farm_id
    and fsr.origin_app_type = uaf.farm_app_type
