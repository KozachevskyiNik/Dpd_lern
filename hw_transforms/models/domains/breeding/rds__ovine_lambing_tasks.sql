select distinct
    t.db_name,
    t.task_id,
    t.farm_id,
    t.task_type,
    t.record_belongs_to_app,
    t.animal_id,
    {{ cast_timestamp("t.record_date") }} as record_date,
    {{ cast_timestamp("t.record_created_datetime") }} as record_created_datetime,
    if(
        tl.season_born is not null,
        cast(concat(cast(tl.season_born as varchar), '-01-01') as date),
        {{ cast_timestamp("tl.season_born_date") }}
    ) as season_born_date,
    tl.genetic_dam_id as genetic_ewe_id,
    tl.dam_id as ewe_id,
    regexp_extract(tl.dam_breed_id, '-(.*)-', 1) as ewe_breed,
    tl.sire_id as ram_id,
    regexp_extract(tl.sire_breed_id, '-(.*)-', 1) as ram_breed,
    tl.lambing_number,
    tl.notes,
    tl.lambs_count,
    tl.all_lambs_aborted,
    regexp_extract(tl.birth_difficulty_id, '-(.*)-', 1) as birthing_difficulty,
    regexp_extract(tl.mothering_ability_id, '-(.*)-', 1) as mothering_ability,
    regexp_extract(tl.milkiness_id, '-(.*)-', 1) as ewe_milkiness_at_birth
from {{ ref("rds__tasks_base") }} as t
inner join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_task_lambing") }}
    {% else %} {{ source("rds_prod", "task_lambing") }}
    {% endif %} as tl on t.db_name = tl.db and t.task_id = tl.id
where t.task_type = 'LAMBING'
