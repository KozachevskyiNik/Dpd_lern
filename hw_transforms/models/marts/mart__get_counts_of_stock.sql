with
    get_counts as (
        select distinct
            cac.db_name as db_name,
            {{ cast_timestamp("cac.dt") }} as dt,
            cac.farm_id as farm_id,
            count_if(
                (cac.animal_category = '0-6')
                and (cac.dt > date_trunc('month', cac.dob_date))
                and (
                    cac.dt > date_trunc('month', cac.moved_in_date)
                    or cac.moved_in_date is null
                )
            ) over partition_by_month as under_6_start_of_month,
            count_if(
                (cac.animal_category = '0-6')
                and (
                    cac.dt = date_trunc('month', cac.dob_date)
                    and (cac.dob_date = cac.moved_in_date or cac.moved_in_date is null)
                )
            ) over partition_by_month as under_6_born_in_month,
            count_if(
                (cac.animal_category = '0-6')
                and (cac.dt = date_trunc('month', cac.moved_in_date))
                and (cac.dob_date != cac.moved_in_date or cac.moved_in_date is null)
            ) over partition_by_month as under_6_bought_in_month,
            count_if(
                (cac.animal_category = '0-6')
                and (
                    cac.dt = date_trunc('month', cac.off_herd_date)
                    and (cac.dod_date != cac.off_herd_date or cac.dod_date is null)
                )
            ) over partition_by_month as under_6_sold_in_month,
            count_if(
                (cac.animal_category = '0-6')
                and (cac.dt = date_trunc('month', cac.dod_date))
            ) over partition_by_month as under_6_died_in_month,
            count_if(
                (cac.animal_category = '7-12')
                and (cac.dt > date_trunc('month', cac.dob_date))
                and (
                    cac.dt > date_trunc('month', cac.moved_in_date)
                    or cac.moved_in_date is null
                )
            ) over partition_by_month as between_7_12_start_of_month,
            count_if(
                (cac.animal_category = '7-12')
                and (
                    cac.dt = date_trunc('month', cac.moved_in_date)
                    and (cac.dob_date != cac.moved_in_date)
                )
            ) over partition_by_month as between_7_12_bought_in_month,
            count_if(
                (cac.animal_category = '7-12')
                and (
                    cac.dt = date_trunc('month', cac.off_herd_date)
                    and (cac.dod_date != cac.off_herd_date or cac.dod_date is null)
                )
            ) over partition_by_month as between_7_12_sold_in_month,
            count_if(
                (cac.animal_category = '7-12')
                and (cac.dt = date_trunc('month', cac.dod_date))
            ) over partition_by_month as between_7_12_died_in_month,
            count_if(
                (cac.animal_category = '13-18')
                and (cac.dt > date_trunc('month', cac.dob_date))
                and (
                    cac.dt > date_trunc('month', cac.moved_in_date)
                    or cac.moved_in_date is null
                )
            ) over partition_by_month as between_13_18_start_of_month,
            count_if(
                (cac.animal_category = '13-18')
                and (
                    cac.dt = date_trunc('month', cac.moved_in_date)
                    and (cac.dob_date != cac.moved_in_date)
                )
            ) over partition_by_month as between_13_18_bought_in_month,
            count_if(
                (cac.animal_category = '13-18')
                and (
                    cac.dt = date_trunc('month', cac.off_herd_date)
                    and (cac.dod_date != cac.off_herd_date or cac.dod_date is null)
                )
            ) over partition_by_month as between_13_18_sold_in_month,
            count_if(
                (cac.animal_category = '13-18')
                and (cac.dt = date_trunc('month', cac.dod_date))
            ) over partition_by_month as between_13_18_died_in_month,
            count_if(
                (cac.animal_category = '19-24')
                and (cac.dt > date_trunc('month', cac.dob_date))
                and (
                    cac.dt > date_trunc('month', cac.moved_in_date)
                    or cac.moved_in_date is null
                )
            ) over partition_by_month as between_19_24_start_of_month,
            count_if(
                (cac.animal_category = '19-24')
                and (
                    cac.dt = date_trunc('month', cac.moved_in_date)
                    and (cac.dob_date != cac.moved_in_date)
                )
            ) over partition_by_month as between_19_24_bought_in_month,
            count_if(
                (cac.animal_category = '19-24')
                and (
                    cac.dt = date_trunc('month', cac.off_herd_date)
                    and (cac.dod_date != cac.off_herd_date or cac.dod_date is null)
                )
            ) over partition_by_month as between_19_24_sold_in_month,
            count_if(
                (cac.animal_category = '19-24')
                and (cac.dt = date_trunc('month', cac.dod_date))
            ) over partition_by_month as between_19_24_died_in_month,
            count_if(
                (cac.animal_category = '25+')
                and (cac.sex = 'M')
                and (cac.dt > date_trunc('month', cac.dob_date))
                and (
                    cac.dt > date_trunc('month', cac.moved_in_date)
                    or cac.moved_in_date is null
                )
            ) over partition_by_month as male_over_25_start_of_month,
            count_if(
                (cac.animal_category = '25+')
                and (
                    cac.dt = date_trunc('month', cac.moved_in_date)
                    and (cac.dob_date != cac.moved_in_date)
                    and (cac.sex = 'M')
                )
            ) over partition_by_month as male_over_25_bought_in_month,
            count_if(
                ((cac.animal_category = '25+') and (cac.sex = 'M'))
                and (
                    cac.dt = date_trunc('month', cac.off_herd_date)
                    and (cac.dod_date != cac.off_herd_date or cac.dod_date is null)
                )
            ) over partition_by_month as male_over_25_sold_in_month,
            count_if(
                (cac.animal_category = '25+')
                and (cac.dt = date_trunc('month', cac.dod_date) and (cac.sex = 'M'))
            ) over partition_by_month as male_over_25_died_in_month,
            count_if(
                (cac.animal_category = '25+')
                and (cac.sex = 'F')
                and (cac.dt > date_trunc('month', cac.dob_date))
                and (
                    cac.dt > date_trunc('month', cac.moved_in_date)
                    or cac.moved_in_date is null
                )
            ) over partition_by_month as female_over_25_start_of_month,
            count_if(
                (cac.animal_category = '25+')
                and (
                    cac.dt = date_trunc('month', cac.moved_in_date)
                    and (cac.dob_date != cac.moved_in_date)
                    and (cac.sex = 'F')
                )
            ) over partition_by_month as female_over_25_bought_in_month,
            count_if(
                (cac.animal_category = '25+')
                and (
                    cac.dt = date_trunc('month', cac.off_herd_date)
                    and (cac.sex = 'F')
                    and (cac.dod_date != cac.off_herd_date or cac.dod_date is null)
                )
            ) over partition_by_month as female_over_25_sold_in_month,
            count_if(
                (cac.animal_category = '25+')
                and (cac.dt = date_trunc('month', cac.dod_date) and (cac.sex = 'F'))
            ) over partition_by_month as female_over_25_died_in_month

        from {{ ref("rds__create_bovine_categories") }} as cac
        window partition_by_month as (partition by cac.db_name, cac.dt, cac.farm_id)

    ),
    create_end_of_month as (
        select
            gc.db_name as db_name,
            {{ cast_timestamp("gc.dt") }} as dt,
            gc.farm_id as farm_id,
            lead(
                gc.under_6_start_of_month, 1, gc.under_6_start_of_month
            ) over partition_by_farm as under_6_end_of_month,
            lead(
                gc.between_7_12_start_of_month, 1, gc.between_7_12_start_of_month
            ) over partition_by_farm as between_7_12_end_of_month,
            lead(
                gc.between_13_18_start_of_month, 1, gc.between_13_18_start_of_month
            ) over partition_by_farm as between_13_18_end_of_month,
            lead(
                gc.between_19_24_start_of_month, 1, gc.between_19_24_start_of_month
            ) over partition_by_farm as between_19_24_end_of_month,
            lead(
                gc.male_over_25_start_of_month, 1, gc.male_over_25_start_of_month
            ) over partition_by_farm as male_over_25_end_of_month,
            lead(
                gc.female_over_25_start_of_month, 1, gc.female_over_25_start_of_month
            ) over partition_by_farm as female_over_25_end_of_month
        from get_counts as gc
        window partition_by_farm as (partition by gc.db_name, gc.farm_id order by gc.dt)
    ),

    create_transfer_out as (
        select
            gc.db_name as db_name,
            {{ cast_timestamp("gc.dt") }} as dt,
            gc.farm_id as farm_id,
            (
                ceom.under_6_end_of_month
                - gc.under_6_start_of_month
                + gc.under_6_sold_in_month
                + gc.under_6_died_in_month
                - gc.under_6_born_in_month
                - gc.under_6_bought_in_month
            ) as under_6_net_transfer,
            (
                ceom.between_7_12_end_of_month
                - gc.between_7_12_start_of_month
                + gc.between_7_12_sold_in_month
                + gc.between_7_12_died_in_month
                - gc.between_7_12_bought_in_month
            ) as between_7_12_net_transfer,
            (
                ceom.between_13_18_end_of_month
                - gc.between_13_18_start_of_month
                + gc.between_13_18_sold_in_month
                + gc.between_13_18_died_in_month
                - gc.between_13_18_bought_in_month
            ) as between_13_18_net_transfer,
            (
                ceom.between_19_24_end_of_month
                - gc.between_19_24_start_of_month
                + gc.between_19_24_sold_in_month
                + gc.between_19_24_died_in_month
                - gc.between_19_24_bought_in_month
            ) as between_19_24_net_transfer,
            (
                ceom.male_over_25_end_of_month
                - gc.male_over_25_start_of_month
                + gc.male_over_25_sold_in_month
                + gc.male_over_25_died_in_month
                - gc.male_over_25_bought_in_month
            ) as male_over_25_net_transfer,
            (
                ceom.female_over_25_end_of_month
                - gc.female_over_25_start_of_month
                + gc.female_over_25_sold_in_month
                + gc.female_over_25_died_in_month
                - gc.female_over_25_bought_in_month
            ) as female_over_25_net_transfer
        from get_counts as gc
        inner join
            create_end_of_month as ceom
            on gc.db_name = ceom.db_name
            and gc.dt = ceom.dt
            and gc.farm_id = ceom.farm_id
    )

select
    gc.db_name as db_name,
    {{ cast_timestamp("gc.dt") }} as reconciliation_month,
    gc.farm_id as farm_id,
    gc.under_6_start_of_month as under_6_start_of_month,
    gc.under_6_born_in_month as under_6_born_in_month,
    gc.under_6_bought_in_month as under_6_bought_in_month,
    gc.under_6_sold_in_month as under_6_sold_in_month,
    gc.under_6_died_in_month as under_6_died_in_month,
    ceom.under_6_end_of_month as under_6_end_of_month,
    cto.under_6_net_transfer as under_6_net_transfer,
    gc.between_7_12_start_of_month as between_7_12_start_of_month,
    gc.between_7_12_bought_in_month as between_7_12_bought_in_month,
    gc.between_7_12_sold_in_month as between_7_12_sold_in_month,
    gc.between_7_12_died_in_month as between_7_12_died_in_month,
    ceom.between_7_12_end_of_month as between_7_12_end_of_month,
    cto.between_7_12_net_transfer as between_7_12_net_transfer,
    gc.between_13_18_start_of_month as between_13_18_start_of_month,
    gc.between_13_18_bought_in_month as between_13_18_bought_in_month,
    gc.between_13_18_sold_in_month as between_13_18_sold_in_month,
    gc.between_13_18_died_in_month as between_13_18_died_in_month,
    ceom.between_13_18_end_of_month as between_13_18_end_of_month,
    cto.between_13_18_net_transfer as between_13_18_net_transfer,
    gc.between_19_24_start_of_month as between_19_24_start_of_month,
    gc.between_19_24_bought_in_month as between_19_24_bought_in_month,
    gc.between_19_24_sold_in_month as between_19_24_sold_in_month,
    gc.between_19_24_died_in_month as between_19_24_died_in_month,
    ceom.between_19_24_end_of_month as between_19_24_end_of_month,
    cto.between_19_24_net_transfer as between_19_24_net_transfer,
    gc.male_over_25_start_of_month as male_over_25_start_of_month,
    gc.male_over_25_bought_in_month as male_over_25_bought_in_month,
    gc.male_over_25_sold_in_month as male_over_25_sold_in_month,
    gc.male_over_25_died_in_month as male_over_25_died_in_month,
    ceom.male_over_25_end_of_month as male_over_25_end_of_month,
    cto.male_over_25_net_transfer as male_over_25_net_transfer,
    gc.female_over_25_start_of_month as female_over_25_start_of_month,
    gc.female_over_25_bought_in_month as female_over_25_bought_in_month,
    gc.female_over_25_sold_in_month as female_over_25_sold_in_month,
    gc.female_over_25_died_in_month as female_over_25_died_in_month,
    ceom.female_over_25_end_of_month as female_over_25_end_of_month,
    cto.female_over_25_net_transfer as female_over_25_net_transfer
from get_counts as gc
inner join
    create_end_of_month as ceom
    on gc.db_name = ceom.db_name
    and gc.farm_id = ceom.farm_id
    and gc.dt = ceom.dt
inner join
    create_transfer_out as cto
    on gc.db_name = cto.db_name
    and gc.farm_id = cto.farm_id
    and gc.dt = cto.dt
