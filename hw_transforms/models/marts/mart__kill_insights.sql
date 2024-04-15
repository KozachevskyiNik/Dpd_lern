select
    -- general animal and farm details
    {{ dbt_utils.generate_surrogate_key(["a.db_name", "a.animal_id", "a.farm_id"]) }}
    as uuid,
    a.db_name as db_name,
    a.animal_id as animal_id,
    a.animal_type_id as animal_type,
    a.farm_id as farm_id,
    a.in_herd_flag as in_herd_flag,
    a.species as species,
    a.sex as sex,
    a.tag as tag,
    a.freezebrand as management_tag,
    a.pedigree,
    a.genetic_dam_tag,
    {{ titlecase("regexp_extract(a.purpose, 'PURPOSE_(.*)', 1)") }} as purpose,
    a.breed as breed,
    {{ cast_timestamp("a.moved_in_date") }} as move_in_date,
    {{ cast_timestamp("a.off_herd_date") }} as off_herd_date,
    {{ cast_timestamp("a.dob_date") }} as dob,
    {{ cast_timestamp("a.calf_reg_datetime") }} as calf_reg_date,
    date_diff('day', a.dob_date, a.off_herd_date) as age_in_days,
    date_diff('month', a.dob_date, a.off_herd_date) as age_in_months,
    -- animal parentage columns
    apd.dam_id as dam_id,
    if(apd.dam_tag is not null, apd.dam_tag, a.genetic_dam_tag) as dam_tag,
    apd.dam_breed as dam_breed,
    apd.dam_total_children as dam_total_children,
    apd.sire_id as sire_id,
    apd.sire_tag as sire_tag,
    apd.sire_breed as sire_breed,
    apd.sire_total_children as sire_total_children,
    -- movement related columns
    if(
        a.dod_date is not null, null,{{ cast_timestamp("a.off_herd_date") }}
    ) as sale_date,
    date_diff(
        'month', a.dob_date, if(a.dod_date is not null, null, a.off_herd_date)
    ) as age_in_months_at_sale,
    if(
        a.animal_type_id = 'BORNONFARM', null,{{ cast_timestamp("a.moved_in_date") }}
    ) as purchase_date,
    date_diff(
        'month', a.dob_date, if(a.animal_type_id = 'BORNONFARM', null, a.moved_in_date)
    ) as age_in_months_at_purchase,
    a.buyer_herd as sourced_from,
    a.buyer_name as sourced_from_name,
    a.seller_herd as sold_to,
    a.seller_name as sold_to_name,
    -- animal finance
    kipc.purchase_price as purchase_price,
    kipc.sale_price as sale_price,
    kipc.fat_str as fat_str,
    kipc.conf_str as conf_str,
    kipc.fat_conf_encoded as fat_conf_encoded,
    a.sale_weight as live_weight,
    kipc.derived_live_wt as derived_live_wt,
    a.dead_weight as dead_weight,
    kipc.ppkg_live as ppkg_live,
    kipc.ppkg_dead as ppkg_dead,
    kipc.days_in_herd as days_in_herd,
    kipc.months_in_herd as months_in_herd,
    kipc.gross_margin as gross_margin,
    kipc.gross_margin_dih as gross_margin_dih,
    kipc.adg_in_herd as adg_in_herd,
    kipc.lifetime_adg as lifetime_adg,
    kipc.kill_out_percentage as kill_out_percentage

from {{ ref("rds__animals_base") }} as a
left join
    {{ ref("rds__bovine_parentage_data") }} as apd
    on a.db_name = apd.db_name
    and a.animal_id = apd.animal_id

left join
    {{ ref("rds__kill_insights_pre_calc") }} as kipc
    on a.db_name = kipc.db_name
    and a.animal_id = kipc.animal_id
where
    a.animal_type_id not in ('AIBULL', 'PREHW')
    and (
        a.off_herd_reason
        not in ('PREHW', 'PREHW-UK', 'PREHW-IE', 'PREHW-SC', 'PREHW-NI')
        or a.off_herd_reason is null
    )
    and (a.dob_date != date('1970-01-01') or a.dob_date is null)
    and (a.off_herd_date != date('1970-01-01') or a.off_herd_date is null)
    and (a.moved_in_date != date('1970-01-01') or a.moved_in_date is null)
    and (a.dod_date != date('1970-01-01') or a.dod_date is null)
    and (a.species = 'BOVINE')
