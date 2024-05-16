select
    animals_base.db_name as db_name,
    animals_base.animal_id as child_id,
    {{ cast_timestamp("animals_base.dob_date") }} as child_dob,
    animals_base.species as species,
    animals_base.sex as child_sex,
    animals_base.tag as child_tag,
    animals_base.breed as child_breed,
    {{ cast_timestamp("animals_base.calf_reg_datetime") }} as child_reg_date,
    animals_base.genetic_dam_tag as genetic_dam_tag,
    dam_base.animal_id as dam_id,
    dam_base.sex as dam_sex,
    dam_base.tag as dam_tag,
    dam_base.generated_tag as dam_generated_tag,
    dam_base.breed as dam_breed,
    count(animals_base.animal_id) over dam_children as dam_total_children,
    {{ cast_timestamp("dam_base.dob_date") }} as dam_dob
from {{ ref("rds__animals_base") }} as animals_base
inner join
    {{ ref("rds__animals_base") }} as dam_base
    on animals_base.db_name = dam_base.db_name
    and animals_base.dam_id = dam_base.animal_id
where animals_base.species = 'BOVINE'
window dam_children as (partition by animals_base.db_name, animals_base.dam_id)
