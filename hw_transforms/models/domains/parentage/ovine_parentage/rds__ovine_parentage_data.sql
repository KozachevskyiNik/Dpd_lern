select distinct
    a.db_name as db_name,
    a.animal_id as animal_id,
    d.child_lambing_difficulty,
    d.ewe_id as ewe_id,
    {{ cast_timestamp("d.ewe_dob") }} as ewe_dob,
    d.ewe_sex as ewe_sex,
    d.ewe_tag as ewe_tag,
    d.ewe_breed as ewe_breed,
    d.ewe_age_in_months_at_birth,
    d.ewe_age_in_days_at_birth,
    d.ewe_age_in_years_at_birth,
    d.ewe_total_children as ewe_total_children,
    d.foster_ewe_id,
    d.foster_ewe_tag,
    d.foster_ewe_total_children,
    s.ram_id as ram_id,
    {{ cast_timestamp("s.ram_dob") }} as ram_dob,
    s.ram_sex as ram_sex,
    s.ram_tag as ram_tag,
    s.ram_breed as ram_breed,
    s.ram_pedigree as ram_pedigree,
    s.ram_age_in_months_at_birth,
    s.ram_age_in_days_at_birth,
    s.ram_age_in_years_at_birth,
    s.ram_total_children as ram_total_children
from {{ ref("rds__animals_base") }} as a
left join
    {{ ref("rds__ewe_data") }} as d
    on a.db_name = d.db_name
    and a.animal_id = d.child_id
left join
    {{ ref("rds__ram_data") }} as s
    on a.db_name = s.db_name
    and a.animal_id = s.child_id
where a.species = 'OVINE'
