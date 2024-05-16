select distinct
    t.db_name,
    t.task_id,
    t.farm_id,
    t.task_type,
    t.record_belongs_to_app,
    t.animal_id,
    a.generated_tag,
    {{ cast_timestamp("t.record_date") }} as record_date,
    a.dob_date,
    date_diff('month', a.dob_date, t.record_date) as age_at_mating_in_months,
    {{ cast_timestamp("t.record_created_datetime") }} as record_created_datetime,
    {{ cast_timestamp("a.expected_lambing_date") }} as expected_lambing_date,
    tmr.ram_used_id,
    rd.ram_tag,
    rd.ram_generated_tag,
    rd.ram_breed,
    rd.ram_pedigree,
    regexp_extract(tmr.raddle_color_id, 'COLOR-(.*)-', 1) as raddle_color,
    tmr.link_to_tags as animals_linked_flag,
    tmr.number_of_ewes_in_group as no_of_ewes_unlinked
from {{ ref("rds__tasks_base") }} as t
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_task_mating_record") }}
    {% else %} {{ source("rds_prod", "task_mating_record") }}
    {% endif %} as tmr on t.db_name = tmr.db and t.task_id = tmr.id
left join
    {{ ref("rds__animals_base") }} as a
    on t.db_name = a.db_name
    and t.animal_id = a.animal_id
left join
    {{ ref("rds__ram_data") }} as rd
    on t.db_name = a.db_name
    and tmr.ram_used_id = rd.ram_id
where t.task_type = 'MATING_RECORD' and t.task_animal_deleted = 0
