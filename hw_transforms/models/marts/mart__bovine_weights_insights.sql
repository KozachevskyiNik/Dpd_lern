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
    ),
    flatten_duplicate_groups as (
        select distinct bw.db_name, bw.task_id, bw.animal_id, bw.farm_id, bw.weigh_date
        from {{ ref("rds__bovine_weights") }} as bw
    ),
    create_bov_mart as (
        select distinct
            {{
                dbt_utils.generate_surrogate_key(
                    [
                        "fdg.db_name",
                        "fdg.task_id",
                        "fdg.animal_id",
                        "fdg.farm_id",
                        "gga.group_name",
                    ]
                )
            }} as uuid,
            fdg.db_name,
            bw.origin_app,
            bw.species,
            fdg.task_id,
            fdg.animal_id,
            fdg.farm_id,
            bw.country,
            bw.task_type,
            /***********************************
    animal information
    ************************************/
            cac.animal_category,
            a.sex,
            a.tag,
            a.generated_tag,
            {{ cast_timestamp("a.dob_date") }} as dob_date,
            date_diff('month', a.dob_date, bw.weigh_date) as age_in_months,
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
            apd.genetic_dam_tag,
            apd.dam_tag,
            apd.dam_generated_tag,
            apd.dam_breed,
            apd.dam_total_children,
            apd.sire_tag,
            apd.sire_generated_tag,
            apd.sire_breed,
            apd.sire_total_children,
            /***********************************
    weight information
    ************************************/
            {{ cast_timestamp("fdg.weigh_date") }} as weigh_date,
            gga.group_name,
            bw.weight_on_date,
            bw.first_weight,
            bw.prev_weight,
            bw.weight_difference,
            if(bw.adg is not null, bw.adg, bw.lifetime_adg) as adg,
            bw.in_herd_adg,
            bw.lifetime_adg,
            bw.avg_offherd_age,
            bw.avg_offherd_weight,
            count(bw.animal_id) over group_by_date as total_animals_date_session,
            -- weight aggregations
            round(avg(bw.weight_on_date) over group_by_date, 2) as avg_session_weight,
            round(
                avg(bw.weight_on_date) over group_by_animal, 2
            ) as avg_lifetime_weight,
            round(max(bw.weight_on_date) over group_by_date, 2) as max_session_weight,
            round(
                max(bw.weight_on_date) over group_by_animal, 2
            ) as max_lifetime_weight,
            round(min(bw.weight_on_date) over group_by_date, 2) as min_session_weight,
            round(
                min(bw.weight_on_date) over group_by_animal, 2
            ) as min_lifetime_weight,
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
            round(
                avg(bw.lifetime_adg) over group_by_date, 2
            ) as avg_session_lifetime_adg,
            round(avg(bw.lifetime_adg) over group_by_animal, 2) as avg_lifetime_adg,
            round(
                max(bw.lifetime_adg) over group_by_date, 2
            ) as max_session_lifetime_adg,
            round(max(bw.lifetime_adg) over group_by_animal, 2) as max_lifetime_adg,
            round(
                min(bw.lifetime_adg) over group_by_date, 2
            ) as min_session_lifetime_adg,
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

        from flatten_duplicate_groups as fdg
        left join
            {{ ref("rds__bovine_weights") }} as bw
            on fdg.db_name = bw.db_name
            and fdg.task_id = bw.task_id
            and fdg.animal_id = bw.animal_id
            and fdg.weigh_date = bw.weigh_date
        left join
            get_group_aggregates as gga
            on fdg.db_name = gga.db_name
            and fdg.task_id = gga.task_id
            and fdg.animal_id = gga.animal_id
            and fdg.weigh_date = gga.weigh_date
        left join
            {{ ref("rds__bovine_parentage_data") }} as apd
            on fdg.db_name = apd.db_name
            and fdg.animal_id = apd.animal_id
        left join
            {{ ref("rds__animals_base") }} as a
            on fdg.db_name = a.db_name
            and fdg.animal_id = a.animal_id
            and fdg.farm_id = a.farm_id
        left join
            {{ ref("rds__create_bovine_categories") }} as cac
            on fdg.db_name = cac.db_name
            and fdg.animal_id = cac.animal_id
            and fdg.farm_id = cac.farm_id
            and date_trunc('month', fdg.weigh_date) = date_trunc('month', cac.dt)
        window
            group_by_date as (partition by fdg.db_name, fdg.farm_id, fdg.weigh_date),
            group_by_animal as (partition by fdg.db_name, fdg.farm_id, fdg.animal_id)
    )
select *
from create_bov_mart
where dob_date != weigh_date
