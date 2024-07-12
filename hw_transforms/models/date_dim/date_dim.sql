with
    series as (
        select x as id, date_add('day', x, date '2019-01-01') as dim_date
        from
            unnest(
                sequence(1, date_diff('day', date '2019-01-01', current_date), 1)) t(x)
    ),
    base as (
        select
            cast(date_format(dim_date, '%Y%m%d') as integer) as datekey,
            dim_date as date,
            day(dim_date) as day,
            case
                when day(dim_date) in (1, 21, 31)
                then 'st'
                when day(dim_date) in (2, 22)
                then 'nd'
                when day(dim_date) in (3, 23)
                then 'rd'
                else 'th'
            end as daysuffix,
            day_of_week(dim_date) as weekday,
            date_format(dim_date, '%W') as weekdayname,
            date_format(dim_date, '%a') as weekdayname_short,
            substring(date_format(dim_date, '%W'), 1, 1) as weekdayname_firstletter,
            day(dim_date)
            - 7
            * (
                week(dim_date)
                - week(date_parse(date_format(dim_date, '%Y-%m-01'), '%Y-%m-%d'))
            ) as dowinmonth,
            day_of_year(dim_date) as dayofyear,
            floor((day(dim_date) - 1) / 7) + 1 as weekofmonth,
            week(dim_date) as weekofyear,
            month(dim_date) as month,
            date_format(dim_date, '%M') as monthname,
            date_format(dim_date, '%b') as monthname_short,
            substring(date_format(dim_date, '%M'), 1, 1) as monthname_firstletter,
            quarter(dim_date) as quarter,
            concat('Q', cast(quarter(dim_date) as varchar)) as quartername,
            date_format(dim_date, '%Y') as year,
            date_format(dim_date, '%m%Y') as mmyyyy,
            date_format(dim_date, '%Y-%m') as monthyear,
            if(day_of_week(dim_date) in (1, 2, 3, 4, 5), 1, 0) as isweekday,
            '0' as isholiday,
            '0' as holidayname,
            '0' as specialdays,
            date_format(dim_date, '%Y') as financialyear,
            quarter(dim_date) as financialquater,
            month(dim_date) as financialmonth,
            date_trunc('year', dim_date) as firstdateofyear,
            date_format(
                date_add('day', - day_of_year(dim_date), date_add('year', 1, dim_date)),
                '%Y-%m-%d'
            ) as lastdateofyear,
            date_trunc('quarter', dim_date) as firstdateofquarter,
            date_format(
                date_add(
                    'day', - day_of_month(dim_date), date_add('quarter', 1, dim_date)
                ),
                '%Y-%m-%d'
            ) as lastdateofquarter,
            date_trunc('month', dim_date) as firstdateofmonth,
            date_trunc('month', dim_date)
            + interval '1' month
            - interval '1' day as lastdateofmonth,
            date_trunc('week', dim_date) as firstdateofweek,
            date_add('day', 7 - day_of_week(dim_date), dim_date) as lastdateofweek,
            cast(date_format(current_date, '%Y') as integer) as currentyear,
            quarter(current_date) as currentquater,
            month(current_date) as currentmonth,
            week(current_date) as currentweek,
            day(current_date) as currentday
        from series
    )
select *
from base
