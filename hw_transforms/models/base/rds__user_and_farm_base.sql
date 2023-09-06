select
    -- farm related cols
    f.db_name as db_name,
    f.farm_id as farm_id,
    f.herd_number as herd_number,
    f.national_herd_id as national_herd_id,
    f.city as city,
    f.county as county,
    f.post_code as post_code,
    f.is_buitelaar as buitelaar_flag,
    ft.farm_type_id as farm_type,
    ft.option_id as farm_option,
    ft.level_id as farm_level,
    ft.band_id as farm_band,
    ft.type_farm as farm_app_type,
    ft.pro_flag as is_pro_flag,
    -- user related cols
    u.user_id as user_id,
    {{ cast_timestamp("u.created_date_time") }} as user_created_at,
    u.dnr_set_by_id as dnr_set_by,
    u.dnr_clear_by_id as dnr_clear_by,
    u.initial_sub_type_id as initial_sub_type,
    u.plan_type_id as plan_type,
    u.group_id as user_group,
    {{ cast_timestamp("u.paid_until_date") }} as user_paid_until_date,
    u.auto_renew as user_auto_renew_flag,
    u.do_not_renew as user_dnr_flag,
    u.agent_id as agent_code
{% if target.name == "beta" %} from {{ source("rds_beta", "beta__farms") }}
{% else %} from {{ source("rds_prod", "rds__farms") }}
{% endif %} as f
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta__farms_medata") }}
    {% else %} {{ source("rds_prod", "rds__farms_metadata") }}
    {% endif %} as ft on f.farm_id = ft.farm_id and f.db_name = ft.db_name
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta__fos_users") }}
    {% else %} {{ source("rds_prod", "rds__fos_users") }}
    {% endif %} as u on f.owner_user_id = u.user_id and f.db_name = u.db_name
