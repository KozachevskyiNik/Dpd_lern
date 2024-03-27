select
    -- general task cols
    t.db as db_name,
    t.country as country,
    t.id as task_id,
    t.guid_id as guid_id,
    t.device_id as device_id,
    t.type_id as task_type_id,
    t.task_type as task_type,
    t.status_id as status_id,
    t.farm_id as farm_id,
    t.belongs_to_app as record_belongs_to_app,
    ta.animal_id as animal_id,
    {{ cast_timestamp("t.due_date") }} as record_date,
    t.description as task_notes,
    {{ cast_timestamp("t.createdat") }} as record_created_datetime
{% if target.name == "beta" %} from {{ source("rds_beta", "beta_task_general") }}
{% else %} from {{ source("rds_prod", "task_general") }}
{% endif %} as t
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_task_general_animal") }}
    {% else %} {{ source("rds_prod", "task_general_animal") }}
    {% endif %} as ta on ta.task_id = t.id and ta.db = t.db
where t.deletedat is null
