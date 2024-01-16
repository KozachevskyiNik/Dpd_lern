with
    get_group_aggregates as (
        select distinct
            bw.db_name,
            bw.task_id,
            bw.animal_id,
            bw.weigh_date,
            bw.group_name,
            -- group weight aggregations
            count(bw.animal_id) over group_by_group_name as total_animals_group_session,
            round(
                avg(bw.weight_on_date) over group_by_group_name, 2
            ) as avg_group_weight,
            round(
                max(bw.weight_on_date) over group_by_group_name, 2
            ) as max_group_weight,
            round(
                min(bw.weight_on_date) over group_by_group_name, 2
            ) as min_group_weight,
            -- group weight difference aggregations
            round(
                avg(bw.weight_difference) over group_by_group_name, 2
            ) as avg_group_weight_difference,
            round(
                max(bw.weight_difference) over group_by_group_name, 2
            ) as max_group_weight_difference,
            round(
                min(bw.weight_difference) over group_by_group_name, 2
            ) as min_group_weight_difference,
            -- group adg aggregations
            round(avg(bw.adg) over group_by_group_name, 2) as avg_group_adg,
            round(max(bw.adg) over group_by_group_name, 2) as max_group_adg,
            round(min(bw.adg) over group_by_group_name, 2) as min_group_adg,
            -- group lifetime adg aggregations
            round(
                avg(bw.lifetime_adg) over group_by_group_name, 2
            ) as avg_group_lifetime_adg,
            round(
                max(bw.lifetime_adg) over group_by_group_name, 2
            ) as max_group_lifetime_adg,
            round(
                min(bw.lifetime_adg) over group_by_group_name, 2
            ) as min_group_lifetime_adg
        from {{ ref("rds__bovine_weights") }} as bw
        where bw.group_name is not null
        window
            group_by_group_name as (
                partition by bw.db_name, bw.farm_id, bw.group_name, bw.weigh_date
            )
    )
select distinct
    {{
        dbt_utils.generate_surrogate_key(
            [
                "bw.db_name",
                "bw.task_id",
                "bw.animal_id",
                "bw.farm_id",
                "bw.group_name",
            ]
        )
    }} as uuid,
    bw.db_name,
    bw.origin_app,
    bw.species,
    bw.task_id,
    bw.animal_id,
    bw.farm_id,
    bw.country,
    bw.task_type,
    /***********************************
    animal information
    ************************************/
    cac.animal_category,
    a.sex,
    a.tag,
    {{ cast_timestamp("a.dob_date") }} as dob_date,
    date_diff('month', a.dob_date, a.off_herd_date) as age_in_months,
    a.breed,
    {{ cast_timestamp("a.moved_in_date") }} as move_in_date,
    {{ cast_timestamp("a.off_herd_date") }} as off_herd_date,
    a.pedigree,
    a.freezebrand,
    a.buyer_herd,
    a.buyer_name,
    a.seller_herd,
    a.seller_name,
    /***********************************
    animal parentage information
    ************************************/
    apd.dam_tag,
    apd.dam_breed,
    apd.dam_total_children,
    apd.sire_tag,
    apd.sire_breed,
    apd.sire_total_children,
    /***********************************
    weight information
    ************************************/
    {{ cast_timestamp("bw.weigh_date") }} as weigh_date,
    bw.group_name,
    bw.weight_on_date,
    bw.prev_weight,
    bw.weight_difference,
    bw.adg,
    bw.lifetime_adg,
    bw.avg_offherd_age,
    bw.avg_offherd_weight,
    count(bw.animal_id) over group_by_date as total_animals_date_session,
    -- weight aggregations
    round(avg(bw.weight_on_date) over group_by_date, 2) as avg_session_weight,
    round(avg(bw.weight_on_date) over group_by_animal, 2) as avg_lifetime_weight,
    round(max(bw.weight_on_date) over group_by_date, 2) as max_session_weight,
    round(max(bw.weight_on_date) over group_by_animal, 2) as max_lifetime_weight,
    round(min(bw.weight_on_date) over group_by_date, 2) as min_session_weight,
    round(min(bw.weight_on_date) over group_by_animal, 2) as min_lifetime_weight,
    -- weight difference aggregations
    round(
        avg(bw.weight_difference) over group_by_date, 2
    ) as avg_session_weight_difference,
    round(
        avg(bw.weight_difference) over group_by_animal, 2
    ) as avg_lifetime_weight_difference,
    round(
        max(bw.weight_difference) over group_by_date, 2
    ) as max_session_weight_difference,
    round(
        max(bw.weight_difference) over group_by_animal, 2
    ) as max_lifetime_weight_difference,
    round(
        min(bw.weight_difference) over group_by_date, 2
    ) as min_session_weight_difference,
    round(
        min(bw.weight_difference) over group_by_animal, 2
    ) as min_lifetime_weight_difference,
    -- adg aggregations
    round(avg(adg) over group_by_date, 2) as avg_session_adg,
    round(avg(adg) over group_by_animal, 2) as avg_adg,
    round(max(adg) over group_by_date, 2) as max_session_adg,
    round(max(adg) over group_by_animal, 2) as max_adg,
    round(min(adg) over group_by_date, 2) as min_session_adg,
    round(min(adg) over group_by_animal, 2) as min_adg,
    -- lifetime adg aggregations
    round(avg(bw.lifetime_adg) over group_by_date, 2) as avg_session_lifetime_adg,
    round(avg(bw.lifetime_adg) over group_by_animal, 2) as avg_lifetime_adg,
    round(max(bw.lifetime_adg) over group_by_date, 2) as max_session_lifetime_adg,
    round(max(bw.lifetime_adg) over group_by_animal, 2) as max_lifetime_adg,
    round(min(bw.lifetime_adg) over group_by_date, 2) as min_session_lifetime_adg,
    round(min(bw.lifetime_adg) over group_by_animal, 2) as min_lifetime_adg,
    gga.avg_group_weight,
    gga.max_group_weight,
    gga.min_group_weight,
    gga.avg_group_weight_difference,
    gga.max_group_weight_difference,
    gga.min_group_weight_difference,
    gga.avg_group_adg,
    gga.max_group_adg,
    gga.min_group_adg,
    gga.avg_group_lifetime_adg,
    gga.max_group_lifetime_adg,
    gga.min_group_lifetime_adg

from {{ ref("rds__bovine_weights") }} as bw
left join
    get_group_aggregates as gga
    on bw.db_name = gga.db_name
    and bw.task_id = gga.task_id
    and bw.animal_id = gga.animal_id
    and bw.weigh_date = gga.weigh_date
    and bw.group_name = gga.group_name
left join
    {{ ref("rds__animal_parentage_data") }} as apd
    on bw.db_name = apd.db_name
    and bw.animal_id = apd.animal_id
left join
    {{ ref("rds__animals_base") }} as a
    on bw.db_name = a.db_name
    and bw.animal_id = a.animal_id
left join
    {{ ref("rds__create_animal_categories") }} as cac
    on bw.db_name = cac.db_name
    and bw.animal_id = cac.animal_id
    and bw.weigh_date = date_trunc('month', cac.dt)
window
    group_by_date as (partition by bw.db_name, bw.farm_id, bw.weigh_date),
    group_by_animal as (partition by bw.db_name, bw.farm_id, bw.animal_id)
