select distinct
    tgb.db_name,
    tgb.task_id,
    tgb.farm_id,
    tgb.task_type,
    tgb.record_belongs_to_app,
    tgb.animal_id,
    {{ cast_timestamp("tgb.record_date") }} as record_date,
    tgb.task_notes,
    {{ cast_timestamp("tgb.record_created_datetime") }} as record_created_datetime,
    {% if target.name == "prod" %} tsps.performed_by_id as operator_id, {% endif %}
    tsps.re_check as re_check_flag,
    tsps.unknown_sire as unknown_sire_flag,
    tsps.use_pregnant_status as use_pregnant_status_flag,
    tsps.unknown_number as unknown_number_of_lambs,
    tsps.result as is_carrying_flag,
    tsps.lambs_count as no_of_expected_lambs
    {% if target.name == "prod" %}, tsps.cost as cost_of_scanning {% endif %}
from {{ ref("rds__tasks_general_base") }} as tgb
left join
    {% if target.name == "beta" %}
        {{ source("rds_beta", "beta_task_sheep_pregnancy_scan") }}
    {% else %} {{ source("rds_prod", "task_sheep_pregnancy_scan") }}
    {% endif %} as tsps on tgb.db_name = tsps.db and tgb.task_id = tsps.task_id
where tgb.task_type = 'SHEEP_PREGNANCY_SCAN'
