-- query
-- generate all month in range, note that there is limit of 10k elements for sequence
with
    get_date_range as (
        select *
        from
            unnest(
                sequence(
                    date '2019-01-01',
                    current_date,
                    -- current_date
                    interval '1' month
                )
            ) as get_date_range(dt)
    ),
    get_animals as (
        select distinct a.db_name, a.animal_id, a.farm_id
        from {{ ref("rds__animals_base") }} as a
    ),
    -- generate animals/dates pairs
    animal_cross_dates as (select * from get_date_range as gdr cross join get_animals),

    assign_categories as (
        select
            aca.db_name as db_name,
            {{ cast_timestamp("aca.dt") }} as dt,
            aca.animal_id as animal_id,
            a.farm_id,
            a.dob_date,
            a.moved_in_date,
            a.off_herd_date,
            a.dod_date,
            a.sex,
            case
                when
                    (
                        date_diff('month', a.dob_date, aca.dt) between 0 and 6
                        and (
                            aca.dt > date_trunc('month', a.moved_in_date)
                            or a.moved_in_date is null
                            or a.dob_date = a.moved_in_date
                        )
                        and (a.off_herd_date >= aca.dt or a.off_herd_date is null)
                    )
                then '0-6'
                when
                    (
                        date_diff('month', a.dob_date, aca.dt) between 7 and 12
                        and (
                            aca.dt > date_trunc('month', a.moved_in_date)
                            or a.moved_in_date is null
                            or a.dob_date = a.moved_in_date
                        )
                        and (a.off_herd_date > aca.dt or a.off_herd_date is null)
                    )
                then '7-12'
                when
                    (
                        date_diff('month', a.dob_date, aca.dt) between 13 and 18
                        and (
                            aca.dt > date_trunc('month', a.moved_in_date)
                            or a.moved_in_date is null
                            or a.dob_date = a.moved_in_date
                        )
                        and (a.off_herd_date > aca.dt or a.off_herd_date is null)
                    )
                then '13-18'
                when
                    (
                        date_diff('month', a.dob_date, aca.dt) between 19 and 24
                        and (
                            aca.dt > date_trunc('month', a.moved_in_date)
                            or a.moved_in_date is null
                            or a.dob_date = a.moved_in_date
                        )
                        and (a.off_herd_date > aca.dt or a.off_herd_date is null)
                    )
                then '19-24'
                when
                    (
                        date_diff('month', a.dob_date, aca.dt) >= 25
                        and (
                            aca.dt > date_trunc('month', a.moved_in_date)
                            or a.moved_in_date is null
                            or a.dob_date = a.moved_in_date
                        )
                        and (a.off_herd_date > aca.dt or a.off_herd_date is null)
                    )
                then '25+'
                else 'NA'
            end as animal_category
        from animal_cross_dates as aca
        left join {{ ref("rds__animals_base") }} as a on aca.animal_id = a.animal_id
        where
            a.animal_type_id not in ('AIBULL', 'PREHW')
            and (
                a.off_herd_reason
                not in ('PREHW', 'PREHW-UK', 'PREHW-IE', 'PREHW-SC', 'PREHW-NI')
                or a.off_herd_reason is null
            )
            and (
                a.dob_date != date_trunc('year', date('1970-01-01'))
                or a.dob_date is null
            )
            and (
                a.off_herd_date != date_trunc('year', date('1970-01-01'))
                or a.off_herd_date is null
            )
            and (
                a.moved_in_date != date_trunc('year', date('1970-01-01'))
                or a.moved_in_date is null
            )
            and (
                a.dod_date != date_trunc('year', date('1970-01-01'))
                or a.dod_date is null
            )

    )
select *
from assign_categories as ac
