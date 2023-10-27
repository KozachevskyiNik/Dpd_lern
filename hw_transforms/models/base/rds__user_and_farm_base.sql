select
    -- farm related cols
    f.db as db_name,
    f.id as farm_id,
    f.herdnumber as herd_number,
    f.nationalherdid as national_herd_id,
    f.towncity as city,
    f.county as county,
    f.postcode as post_code,
    f.is_buitelaar as buitelaar_flag,
    ft.farmtypeid as farm_type,
    ft.option_id as farm_option,
    ft.level_id as farm_level,
    ft.band_id as farm_band,
    ft.type_farm as farm_app_type,
    ft.pro as is_pro_flag,
    -- user related cols
    u.id as user_id,
    {{ cast_timestamp("u.created_at") }} as user_created_at,
    u.dnr_set_by_id as dnr_set_by,
    u.dnr_clear_by_id as dnr_clear_by,
    u.initialsubtypeid as initial_sub_type,
    u.plantypeid as plan_type,
    u.groupid as user_group,
    {{ cast_timestamp("u.paid_until") }} as user_paid_until_date,
    u.autorenew as user_auto_renew_flag,
    u.donotrenew as user_dnr_flag,
    u.agent_id as agent_code
{% if target.name == "beta" %} from {{ source("rds_beta", "beta_farm") }}
{% else %} from {{ source("rds_prod", "farm") }}
{% endif %} as f
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_farm_farmtype") }}
    {% else %} {{ source("rds_prod", "farm_farmtype") }}
    {% endif %} as ft on f.id = ft.farm_id and f.db = ft.db
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_fos_user") }}
    {% else %} {{ source("rds_prod", "fos_user") }}
    {% endif %} as u on f.owneruserid = u.id and f.db = u.db
