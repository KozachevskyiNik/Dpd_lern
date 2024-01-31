with
    get_monthly_hw_logins as (
        select
            uaf.db_name,
            uaf.farm_id,
            0 as origin_app_type,
            -- login metrics
            aom.month_date,
            aom.monthly_herdwatch_login as monthly_app_login
        from {{ ref("rds__user_and_farm_base") }} as uaf
        inner join
            {{ source("bq_prod", "app_opened_monthly") }} as aom
            on uaf.herd_number = aom.farm_no
        where uaf.farm_type not in ('CROP_FARM', 'SHEEP_FARM')
    ),
    get_monthly_fw_logins as (
        select
            uaf.db_name,
            uaf.farm_id,
            1 as origin_app_type,
            -- login metrics
            aom.month_date,
            aom.monthly_flockwatch_login as monthly_app_login
        from {{ ref("rds__user_and_farm_base") }} as uaf
        inner join
            {{ source("bq_prod", "app_opened_monthly") }} as aom
            on uaf.herd_number = aom.farm_no
        where uaf.farm_type = 'SHEEP_FARM'
    ),
    get_monthly_cw_logins as (
        select
            uaf.db_name,
            uaf.farm_id,
            2 as origin_app_type,
            -- login metrics
            aom.month_date,
            aom.monthly_cropwatch_login as monthly_app_login
        from {{ ref("rds__user_and_farm_base") }} as uaf
        inner join
            {{ source("bq_prod", "app_opened_monthly") }} as aom
            on uaf.herd_number = aom.farm_no
        where uaf.farm_type = 'CROP_FARM'
    ),
    get_monthly_logins as (
        select *
        from get_monthly_hw_logins
        union
        select *
        from get_monthly_fw_logins
        union
        select *
        from get_monthly_cw_logins
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
    gml.month_date,
    gml.monthly_app_login
from {{ ref("rds__user_and_farm_base") }} as uaf
left join
    get_monthly_logins as gml
    on uaf.db_name = gml.db_name
    and uaf.farm_id = gml.farm_id
    and uaf.farm_app_type = gml.origin_app_type
