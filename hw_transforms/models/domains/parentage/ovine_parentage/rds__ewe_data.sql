select
    animals_base.db_name as db_name,
    animals_base.animal_id as child_id,
    {{ cast_timestamp("animals_base.dob_date") }} as child_dob,
    animals_base.species as species,
    animals_base.sex as child_sex,
    animals_base.tag as child_tag,
    animals_base.breed as child_breed,
    animals_base.lambing_difficulty as child_lambing_difficulty,
    foster_base.animal_id as foster_ewe_id,
    foster_base.tag as foster_ewe_tag,
    count(foster_base.animal_id) over foster_children as foster_ewe_total_children,
    dam_base.animal_id as ewe_id,
    dam_base.sex as ewe_sex,
    dam_base.tag as ewe_tag,
    dam_base.breed as ewe_breed,
    date_diff(
        'month', dam_base.dob_date, animals_base.dob_date
    ) as ewe_age_in_months_at_birth,
    date_diff(
        'day', dam_base.dob_date, animals_base.dob_date
    ) as ewe_age_in_days_at_birth,
    date_diff(
        'year', dam_base.dob_date, animals_base.dob_date
    ) as ewe_age_in_years_at_birth,
    count(animals_base.animal_id) over dam_children as ewe_total_children,
    {{ cast_timestamp("dam_base.dob_date") }} as ewe_dob
from {{ ref("rds__animals_base") }} as animals_base
inner join
    {{ ref("rds__animals_base") }} as dam_base
    on animals_base.db_name = dam_base.db_name
    and animals_base.dam_id = dam_base.animal_id
left join
    {{ ref("rds__animals_base") }} as foster_base
    on animals_base.db_name = foster_base.db_name
    and animals_base.foster_ewe_id = foster_base.animal_id
where animals_base.species = 'OVINE'
window
    dam_children as (partition by animals_base.db_name, animals_base.dam_id),
    foster_children as (partition by animals_base.db_name, animals_base.foster_ewe_id)
