select
    animals_base.db_name as db_name,
    animals_base.animal_id as child_id,
    {{ cast_timestamp("animals_base.dob_date") }} as child_dob,
    animals_base.species as species,
    animals_base.sex as child_sex,
    animals_base.tag as child_tag,
    animals_base.breed as child_breed,
    {{ cast_timestamp("animals_base.calf_reg_datetime") }} as child_reg_date,
    sire_base.animal_id as sire_id,
    sire_base.sex as sire_sex,
    sire_base.tag as sire_tag,
    sire_base.breed as sire_breed,
    sire_base.pedigree as sire_pedigree,
    sire_base.stock_bull_flag as stock_bull_flag,
    count(animals_base.animal_id) over sire_children as sire_total_children,
    {{ cast_timestamp("sire_base.dob_date") }} as sire_dob
from {{ ref("rds__animals_base") }} as animals_base
inner join
    {{ ref("rds__animals_base") }} as sire_base
    on animals_base.db_name = sire_base.db_name
    and animals_base.sire_id = sire_base.animal_id
where animals_base.species = 'BOVINE'
window sire_children as (partition by animals_base.db_name, animals_base.sire_id)
