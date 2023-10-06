select distinct
    cac.db_name as db_name,
    {{ cast_timestamp("cac.dt") }} as dt,
    cac.farm_id as farm_id,
    count_if(
        (cac.animal_category = '0-6') and (cac.dt > date_trunc('month', cac.dob_date))
    ) over partition_by_month as under_6_start_of_month,
    count_if(
        (cac.animal_category = '0-6') and (cac.dt = date_trunc('month', cac.dob_date))
    ) over partition_by_month as under_6_born_in_month,
    count_if(
        (cac.animal_category = '0-6')
        and (cac.dt = date_trunc('month', cac.moved_in_date))
        and (cac.dob_date != cac.moved_in_date)
    ) over partition_by_month as under_6_bought_in_month,
    count_if(
        (cac.animal_category = '0-6')
        and (
            cac.dt = date_trunc('month', cac.off_herd_date)
            and (cac.dod_date != cac.off_herd_date or cac.dod_date is null)
        )
    ) over partition_by_month as under_6_sold_in_month,
    count_if(
        (cac.animal_category = '0-6') and (cac.dt = date_trunc('month', cac.dod_date))
    ) over partition_by_month as under_6_died_in_month,
    count_if(
        (cac.animal_category = '7-12') and (cac.dt > date_trunc('month', cac.dob_date))
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
        (cac.animal_category = '7-12') and (cac.dt = date_trunc('month', cac.dod_date))
    ) over partition_by_month as between_7_12_died_in_month,
    count_if(
        (cac.animal_category = '13-18') and (cac.dt > date_trunc('month', cac.dob_date))
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
        (cac.animal_category = '13-18') and (cac.dt = date_trunc('month', cac.dod_date))
    ) over partition_by_month as between_13_18_died_in_month,
    count_if(
        (cac.animal_category = '19-24') and (cac.dt > date_trunc('month', cac.dob_date))
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
        (cac.animal_category = '19-24') and (cac.dt = date_trunc('month', cac.dod_date))
    ) over partition_by_month as between_19_24_died_in_month,
    count_if(
        (cac.animal_category = '25+')
        and (cac.sex = 'M')
        and (cac.dt > date_trunc('month', cac.dob_date))
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

from {{ ref("rds__create_animal_categories") }} as cac
window partition_by_month as (partition by cac.db_name, cac.dt, cac.farm_id)
