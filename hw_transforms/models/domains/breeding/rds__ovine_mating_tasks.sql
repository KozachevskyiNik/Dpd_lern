select distinct
    t.db_name,
    t.task_id,
    t.farm_id,
    t.task_type,
    t.record_belongs_to_app,
    t.animal_id,
    {{ cast_timestamp("t.record_date") }} as record_date,
    {{ cast_timestamp("t.record_created_datetime") }} as record_created_datetime,
    tmr.ram_used_id,
    regexp_extract(tmr.raddle_color_id, 'COLOR-(.*)-', 1) as raddle_color,
    tmr.link_to_tags as animals_linked_flag,
    tmr.number_of_ewes_in_group as no_of_ewes_unlinked
from {{ ref("rds__tasks_base") }} as t
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_task_mating_record") }}
    {% else %} {{ source("rds_prod", "task_mating_record") }}
    {% endif %} as tmr on t.db_name = tmr.db and t.task_id = tmr.id
where t.task_type = 'MATING_RECORD'
