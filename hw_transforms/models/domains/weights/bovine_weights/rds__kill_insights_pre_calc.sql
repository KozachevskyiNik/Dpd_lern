with

    grade_fat_base as (
        select
            a.db_name,
            a.animal_id,
            substring(a.kill_out_grade, 1, 2) as fat,
            substring(a.kill_out_grade, 3) as conf  -- noqa
        from {{ ref("rds__animals_base") }} as a
        where a.kill_out_grade is not null
    ),

    fields_for_calcs as (
        select
            a.db_name as db_name,
            a.animal_id as animal_id,
            gfb.fat as fat_str,
            gfb.conf as conf_str,  -- noqa
            case
                when gfb.fat = 'E+'
                then 15
                when (gfb.fat = 'E=' or gfb.fat = 'E')
                then 14
                when gfb.fat = 'E-'
                then 13
                when gfb.fat = 'U+'
                then 12
                when gfb.fat = 'U='
                then 11
                when (gfb.fat = 'U-' or gfb.fat = '-U')
                then 10
                when gfb.fat = 'R+'
                then 9
                when (gfb.fat = 'R=' or gfb.fat = 'R')
                then 8
                when gfb.fat = 'R-'
                then 7
                when gfb.fat = 'O+'
                then 6
                when gfb.fat = 'O='
                then 5
                when (gfb.fat = 'O-' or gfb.fat = '-O')
                then 4
                when gfb.fat = 'P+'
                then 3
                when gfb.fat = 'P='
                then 2
                when gfb.fat = 'P-' or gfb.fat = '-P'
                then 1
                else null
            end as fat_multi,
            case
                when gfb.conf = '1-'
                then 1
                when (gfb.conf = '1=' or gfb.conf = '1')
                then 3
                when gfb.conf = '1+'
                then 5
                when gfb.conf = '2-'
                then 7
                when (gfb.conf = '2=' or gfb.conf = '2')
                then 8
                when gfb.conf = '2+'
                then 9
                when gfb.conf = '3-'
                then 11
                when (gfb.conf = '3=' or gfb.conf = '3')
                then 13
                when gfb.conf = '3+'
                then 15
                when (gfb.conf = '4-' or gfb.conf = '4L')
                then 14
                when (gfb.conf = '4=' or gfb.conf = '4H')
                then 12
                when gfb.conf = '4+'
                then 10
                when (gfb.conf = '5-' or gfb.conf = '5L')
                then 6
                when (gfb.conf = '5=' or gfb.conf = '5H')
                then 4
                when gfb.conf = '5+'
                then 2
                else null
            end as conf_multi,
            if(
                a.off_herd_date = date('1970-01-01'),
                null,
                date_diff(
                    'day',
                    if(a.moved_in_date is not null, a.moved_in_date, a.dob_date),
                    off_herd_date
                )
            ) as days_in_herd,
            if(
                off_herd_date = date('1970-01-01'),
                null,
                date_diff(
                    'month',
                    if(a.moved_in_date is not null, a.moved_in_date, a.dob_date),
                    off_herd_date
                )
            ) as months_in_herd,
            case
                when sale_price is null
                then null
                when sale_price = 0.0
                then null
                else
                    (
                        sale_price
                        - if(a.animal_type_id = 'BORNONFARM', 0, purchase_price)
                    )
            end as gross_margin,
            a.sale_weight as sale_weight

        from {{ ref("rds__animals_base") }} as a
        left join
            grade_fat_base as gfb
            on a.db_name = gfb.db_name
            and a.animal_id = gfb.animal_id

    ),

    derived_weight as (
        select distinct
            wt.db_name,
            wt.animal_id,
            max(derived_live_wt) over (
                partition by wt.db_name, wt.animal_id
            ) as derived_live_wt
        from {{ ref("rds__all_weight_tasks") }} as wt
    )

select

    -- animal finance
    a.db_name as db_name,
    a.animal_id as animal_id,
    a.purchase_price as purchase_price,
    a.sale_price as sale_price,
    ffc.days_in_herd as days_in_herd,
    ffc.months_in_herd as months_in_herd,
    ffc.fat_str,
    ffc.conf_str,
    (ffc.fat_multi * ffc.conf_multi) as fat_conf_encoded,
    ffc.sale_weight as live_weight,
    dw.derived_live_wt as derived_live_wt,
    a.dead_weight as dead_weight,
    case
        when a.sale_price is null
        then null
        when a.sale_weight is not null
        then round((a.sale_price / a.sale_weight), 2)
        else round((a.sale_price / dw.derived_live_wt), 2)
    end as ppkg_live,
    a.price_per_kilo as ppkg_dead,
    round(ffc.gross_margin, 2) as gross_margin,
    if(
        ffc.days_in_herd = 0,
        round(ffc.gross_margin, 2),
        round((ffc.gross_margin / ffc.days_in_herd), 2)
    ) as gross_margin_dih,  -- check for nan/ infinity
    (
        round(
            (
                if(ffc.sale_weight is not null, ffc.sale_weight, dw.derived_live_wt)
                - if(a.sex = 'M', 45, 40)
            )
            / ffc.days_in_herd,
            2
        )
    ) as adg_in_herd,
    (
        a.dead_weight
        / if(ffc.sale_weight is not null, ffc.sale_weight, dw.derived_live_wt)
    ) as kill_out_percentage

from {{ ref("rds__animals_base") }} as a
left join
    fields_for_calcs as ffc on a.db_name = ffc.db_name and a.animal_id = ffc.animal_id
left join derived_weight as dw on a.db_name = dw.db_name and a.animal_id = dw.animal_id
where ffc.days_in_herd > 0
