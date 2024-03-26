with
    get_counts_of_lambs as (
        select distinct
            olt.db_name,
            date_trunc('year', olt.record_date) as lambing_year,
            olt.farm_id,
            olt.animal_id,
            a.dob_date,
            a.sex,
            a.tag,
            a.freezebrand,
            a.ov_is_alive,
            a.ov_vigour,
            a.ov_rearing,
            a.foster_ewe_id,
            a.dod_date,
            a.off_herd_date,
            a.off_herd_reason,
            approx_distinct(olt.animal_id) over lambs_by_farm as total_lambs,
            approx_distinct(
                if((a.ov_is_alive = 1 or a.ov_is_alive is null), olt.animal_id, null)
            ) over lambs_by_farm as total_live_lambs,
            approx_distinct(
                if(a.ov_is_alive = 0, olt.animal_id, null)
            ) over lambs_by_farm as total_dead_lambs,
            approx_distinct(olt.ewe_id) over lambs_by_farm as total_ewes_in_season

        from {{ ref("rds__ovine_lambing_tasks") }} as olt
        inner join
            {{ ref("rds__animals_base") }} as a
            on olt.db_name = a.db_name
            and olt.animal_id = a.animal_id
            and olt.farm_id = a.farm_id
        window
            lambs_by_farm as (
                partition by
                    olt.db_name, olt.farm_id, date_trunc('year', olt.record_date)
            )
    ),
    get_counts_of_mating as (
        select distinct
            omt.db_name,
            date_trunc('year', omt.record_date) as mating_year,
            omt.farm_id,
            approx_distinct(omt.animal_id) over mating_by_farm as total_ewes_mated
        from {{ ref("rds__ovine_mating_tasks") }} as omt
        window
            mating_by_farm as (
                partition by
                    omt.db_name, omt.farm_id, date_trunc('year', omt.record_date)
            )
    ),
    get_birth_weight as (
        select
            ow.db_name,
            ow.farm_id,
            ow.animal_id,
            ow.weigh_date,
            if((a.dob_date = ow.weigh_date), weight_on_date, null) as birth_weight
        from {{ ref("rds__ovine_weights") }} as ow
        inner join
            {{ ref("rds__animals_base") }} as a
            on ow.db_name = a.db_name
            and ow.farm_id = a.farm_id
            and ow.animal_id = a.animal_id
            and ow.weigh_date = a.dob_date
    )

select distinct
    {{
        dbt_utils.generate_surrogate_key(
            [
                "olt.db_name",
                "olt.record_date",
                "olt.farm_id",
                "olt.animal_id",
            ]
        )
    }} as uuid,
    olt.db_name,
    {{ cast_timestamp("olt.record_date") }} as record_date,
    date_trunc('year', olt.record_date) as record_year,
    {{ cast_timestamp("cl.dob_date") }} as lamb_dob,
    {{ cast_timestamp("cl.dod_date") }} as dod_date,
    {{ cast_timestamp("cl.off_herd_date") }} as off_herd_date,
    {{ titlecase("regexp_extract(cl.off_herd_reason, '-(.*)-', 1)") }}
    as off_herd_reason,
    date_diff(
        'hour',
        cl.dob_date,
        if(cl.off_herd_date is not null, cl.off_herd_date, cl.dob_date)
    ) as age_at_death_in_hours,
    olt.farm_id,
    olt.animal_id,
    cl.ov_is_alive as born_alive_flag,
    cl.sex,
    cl.tag,
    cl.freezebrand as management_tag,
    {{ titlecase("cl.ov_vigour") }} as ov_vigour,
    {{ titlecase("cl.ov_rearing") }} as ov_rearing,
    if(olt.ewe_id is not null, olt.ewe_id, olt.genetic_ewe_id) as ewe_id,
    opd.ewe_tag,
    olt.ewe_breed,
    opd.ewe_age_in_months_at_birth,
    opd.ewe_age_in_years_at_birth,
    opd.foster_ewe_id,
    opd.foster_ewe_tag,
    olt.ram_id,
    opd.ram_tag,
    opd.ram_pedigree,
    olt.ram_breed,
    opd.ram_age_in_months_at_birth,
    opd.ram_age_in_years_at_birth,
    olt.lambing_number,
    olt.lambs_count,
    olt.all_lambs_aborted,
    {{ titlecase("olt.birthing_difficulty") }} as birthing_difficulty,
    {{ titlecase("olt.mothering_ability") }} as mothering_ability,
    olt.ewe_milkiness_at_birth,
    cl.total_lambs,
    cl.total_ewes_in_season,
    cm.total_ewes_mated,
    bw.birth_weight,
    cl.total_live_lambs,
    cl.total_dead_lambs,
    round((cl.total_live_lambs * 1.0 / cl.total_lambs * 1.0), 2) as live_percent,
    round((cl.total_dead_lambs * 1.0 / cl.total_lambs * 1.0), 2) as dead_percent,
    round(
        (cl.total_live_lambs * 1.0 / cl.total_ewes_in_season * 1.0), 2
    ) as litter_size,
    round((cl.total_lambs * 1.0 / cm.total_ewes_mated * 1.0), 2) as lambing_percent,
    round(avg(bw.birth_weight) over farm_by_year, 2) as avg_birth_weight_by_year

from {{ ref("rds__ovine_lambing_tasks") }} as olt
left join
    get_counts_of_lambs as cl
    on olt.db_name = cl.db_name
    and olt.farm_id = cl.farm_id
    and olt.animal_id = cl.animal_id
    and date_trunc('year', olt.record_date) = cl.lambing_year
left join
    get_counts_of_mating as cm
    on olt.db_name = cm.db_name
    and olt.farm_id = cm.farm_id
    and date_trunc('year', olt.record_date) = cm.mating_year
left join
    get_birth_weight as bw
    on olt.db_name = bw.db_name
    and olt.animal_id = bw.animal_id
    and olt.record_date = bw.weigh_date
left join
    {{ ref("rds__ovine_parentage_data") }} as opd
    on olt.db_name = opd.db_name
    and olt.animal_id = opd.animal_id
window
    farm_by_year as (
        partition by olt.db_name, olt.farm_id, date_trunc('year', olt.record_date)
    )
