with
    clean_report_name as (
        select
            evp.db_name,
            evp.farm_id,
            evp.user_id,
            evp.event_created_datetime,
            -- extract report name from below format 
            -- "Email Sent - Report Id: WITHDRAWN-MEATSHEEP, Flockwatch"
            trim(
                regexp_extract(
                    regexp_extract(replace(evp.data, '"'), '\:(.*)'), '^(.*),'
                )
            ) as report_name,
            -- extract app name from below format 
            -- "Email Sent - Report Id: WITHDRAWN-MEATSHEEP, Flockwatch"
            trim(
                regexp_extract(
                    regexp_extract(replace(evp.data, '"'), '\:(.*)'), '\,(.*)'
                )
            ) as report_app_name

        from {{ ref("rds__eventlog_partitioned") }} as evp
        where
            evp.tracking_code in ('HW239A', 'HW239B') and evp.description = 'Ran Report'
    ),
    get_reports_by_app as (
        select
            crn.db_name,
            crn.farm_id,
            crn.user_id,
            crn.report_name,
            crn.event_created_datetime,
            case
                when
                    (
                        crn.report_name in (
                            'ADG-PER-WEIGHING-FW',
                            'ANIMAL-MORTALITY-FW',
                            'ANIMALS-BYGROUP-FW',
                            'ANIMALS-MOVED-OFF-FW',
                            'FARMBORN-FW',
                            'LAMBING-FW',
                            'MATING-FW',
                            'IN-FLOCK'
                        )
                        or crn.report_app_name = 'Flockwatch'
                    )
                then 1
                when
                    crn.report_name in (
                        'CULTIVATION',
                        'FERTILISER_PURCHASES',
                        'FIELD-PROFILE-ALL',
                        'FIELD-PROFILE-ANNUAL',
                        'HARVESTING',
                        'PADDOCK',
                        'PADDOCK-RECORDS',
                        'SPRAYINVENTORY-RECEIVED',
                        'SPRAYINVENTORY-RETURNED',
                        'SPRAYUSAGE'
                    )
                then 2
                else 0
            end as app_name,
            extract(week from crn.event_created_datetime) as week_no,
            extract(month from crn.event_created_datetime) as month_no,
            extract(quarter from crn.event_created_datetime) as quarter_no
        from clean_report_name as crn
    ),
    get_report_metrics as (
        select
            gra.db_name,
            gra.farm_id,
            gra.user_id,
            gra.report_name,
            gra.event_created_datetime,
            gra.app_name,
            gra.week_no,
            gra.month_no,
            gra.quarter_no,
            count(gra.report_name) over weekly as total_weekly_reports,
            count(gra.report_name) over monthly as total_monthly_reports,
            count(gra.report_name) over quarterly as total_quarterly_reports
        from get_reports_by_app as gra
        window
            weekly as (partition by gra.week_no, gra.farm_id),
            monthly as (partition by gra.month_no, gra.farm_id),
            quarterly as (partition by gra.quarter_no, gra.farm_id)

    )
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
    trim(replace(grm.report_name, '+')) as report_name,
    {{ cast_timestamp("grm.event_created_datetime") }} as report_run_datetime,
    grm.week_no,
    grm.month_no,
    grm.quarter_no,
    grm.total_weekly_reports,
    grm.total_monthly_reports,
    grm.total_quarterly_reports
from {{ ref("rds__user_and_farm_base") }} as uaf
left join
    get_report_metrics as grm
    on uaf.db_name = grm.db_name
    and uaf.farm_id = grm.farm_id
    and uaf.farm_app_type = grm.app_name
where grm.report_name is not null
