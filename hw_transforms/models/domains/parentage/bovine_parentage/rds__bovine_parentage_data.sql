select
    a.db_name as db_name,
    a.animal_id as animal_id,
    d.dam_id as dam_id,
    d.dam_sex as dam_sex,
    d.dam_tag as dam_tag,
    d.genetic_dam_tag,
    d.dam_generated_tag,
    d.dam_breed as dam_breed,
    d.dam_total_children as dam_total_children,
    s.sire_id as sire_id,
    s.sire_sex as sire_sex,
    s.sire_tag as sire_tag,
    s.sire_generated_tag,
    s.sire_breed as sire_breed,
    s.sire_pedigree as sire_pedigree,
    s.sire_total_children as sire_total_children
from {{ ref("rds__animals_base") }} as a
left join
    {{ ref("rds__dam_data") }} as d
    on a.db_name = d.db_name
    and a.animal_id = d.child_id
left join
    {{ ref("rds__sire_data") }} as s
    on a.db_name = s.db_name
    and a.animal_id = s.child_id
where a.species = 'BOVINE'
