with
    combine_ram_id as (
        select
            a.db_name,
            a.animal_id,
            a.sex,
            a.species,
            a.dob_date,
            a.tag,
            a.dod_date,
            a.breed,
            a.off_herd_reason,
            a.dam_id as ewe_id,
            if(a.sire_id is not null, a.sire_id, a.ram_id) as ram_id,
            a.lambing_difficulty
        from {{ ref("rds__animals_base") }} as a
    )

select
    cr.db_name as db_name,
    cr.animal_id as child_id,
    {{ cast_timestamp("cr.dob_date") }} as child_dob,
    cr.sex as child_sex,
    cr.tag as child_tag,
    cr.breed as child_breed,
    cr.lambing_difficulty as child_lambing_difficulty,
    sire_base.animal_id as ram_id,
    sire_base.sex as ram_sex,
    sire_base.tag as ram_tag,
    sire_base.breed as ram_breed,
    sire_base.pedigree as ram_pedigree,
    sire_base.ov_is_stock_ram as stock_bull_flag,
    date_diff('month', sire_base.dob_date, cr.dob_date) as ram_age_in_months_at_birth,
    date_diff('day', sire_base.dob_date, cr.dob_date) as ram_age_in_days_at_birth,
    date_diff('year', sire_base.dob_date, cr.dob_date) as ram_age_in_years_at_birth,
    count(cr.animal_id) over sire_children as ram_total_children,
    {{ cast_timestamp("sire_base.dob_date") }} as ram_dob
from combine_ram_id as cr
inner join
    {{ ref("rds__animals_base") }} as sire_base
    on cr.db_name = sire_base.db_name
    and cr.ram_id = sire_base.animal_id
    and cr.species = 'OVINE'
window sire_children as (partition by cr.db_name, cr.ram_id)
