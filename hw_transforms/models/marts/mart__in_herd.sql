with
    get_last_weight as (
        select
            wt.db_name,
            wt.animal_id,
            max(wt.record_date) as last_weigh_date,
            max_by(wt.weight_on_date, wt.record_date) as last_weight
        from {{ ref("rds__all_weight_tasks") }} as wt
        group by 1, 2
    ),
    get_group_names as (
        select t.db_name, t.farm_id, t.animal_id, t.task_name as group_name
        from {{ ref("rds__tasks_base") }} as t
        inner join
            {{ ref("rds__animals_base") }} as a
            on t.db_name = a.db_name
            and t.animal_id = a.animal_id
            and a.off_herd_date is null
            and (
                t.task_type_id
                in ('GROUP-IE', 'GROUP-UK', 'GROUP-SC', 'GROUP-NI', 'GROUP-SC')
                or t.task_type = 'GROUP'
            )
    )
select
    a.db_name,
    a.farm_id,
    a.animal_id,
    ggn.group_name,
    a.animal_type_id,
    a.species,
    a.tag,
    a.generated_tag,
    a.freezebrand as management_tag,
    a.lambing_number,
    a.pedigree as pedigree_name,
    -- #TODO add category
    {{ cast_timestamp("a.dob_date") }} as dob_date,
    date_diff('month', a.dob_date, current_date) as age_in_months,
    a.breed,
    a.sex,
    if(a.species = 'BOVINE', a.stock_bull_flag, a.ov_is_stock_ram) as stock_father_flag,
    {{ cast_timestamp("a.moved_in_date") }} as moved_in_date,
    if(
        (
            a.moved_in_date != a.dob_date
            and a.animal_type_id not in ('BORNONFARM', 'BORNONFLOCK')
        ),
        date_diff('month', a.dob_date, a.moved_in_date),
        null
    ) as age_at_purchase,
    date_diff('day', a.moved_in_date, current_date) as days_on_farm,
    a.purchase_price,
    a.purchase_weight,
    a.seller_herd as source_herd,
    a.seller_name as source_name,
    if(a.species = 'BOVINE', bpd.dam_tag, opd.ewe_tag) as mother_tag,
    if(
        a.species = 'BOVINE', bpd.dam_generated_tag, opd.ewe_generated_tag
    ) as mother_generated_tag,
    if(
        a.species = 'BOVINE', bpd.genetic_dam_tag, opd.genetic_ewe_tag
    ) as genetic_mother,
    if(a.species = 'BOVINE', bpd.sire_tag, opd.ram_tag) as father_tag,
    if(
        a.species = 'BOVINE', bpd.sire_generated_tag, opd.ram_generated_tag
    ) as father_generated_tag,
    {{ cast_timestamp("a.tb_test_date") }} as tb_test_date,
    {{ cast_timestamp("a.br_test_date") }} as br_test_date,
    lw.last_weigh_date,
    lw.last_weight,
    {{ cast_timestamp("a.off_herd_date") }} as moved_off_date,
    a.notes as note
from {{ ref("rds__animals_base") }} as a
left join
    {{ ref("rds__bovine_parentage_data") }} as bpd
    on a.db_name = bpd.db_name
    and a.animal_id = bpd.animal_id
    and a.species = 'BOVINE'
left join
    {{ ref("rds__ovine_parentage_data") }} as opd
    on a.db_name = opd.db_name
    and a.animal_id = opd.animal_id
    and a.species = 'OVINE'
left join get_last_weight as lw on a.db_name = lw.db_name and a.animal_id = lw.animal_id
left join
    get_group_names as ggn
    on a.db_name = ggn.db_name
    and a.animal_id = ggn.animal_id
    and a.farm_id = ggn.farm_id
where
    a.animal_type_id not in ('AIBULL', 'PREHW')
    and (
        a.off_herd_reason
        not in ('PREHW', 'PREHW-UK', 'PREHW-IE', 'PREHW-SC', 'PREHW-NI')
        or a.off_herd_reason is null
    )
    and (
        date_trunc('year', a.dob_date) != date_trunc('year', date('1970-01-01'))
        or a.dob_date is null
    )
    and (
        date_trunc('year', a.off_herd_date) != date_trunc('year', date('1970-01-01'))
        or a.off_herd_date is null
    )
    and (
        date_trunc('year', a.moved_in_date) != date_trunc('year', date('1970-01-01'))
        or a.moved_in_date is null
    )
    and (
        date_trunc('year', a.dod_date) != date_trunc('year', date('1970-01-01'))
        or a.dod_date is null
    )
