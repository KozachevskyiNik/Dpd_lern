with
    animal_counts as (
        select distinct
            db_name,
            farm_id,
            count(animal_id) over animal_window as total_animals_in_herd
        from {{ ref("rds__animals_base") }}
        where
            "in_herd_flag" = 1
            and sex = 'F'
            and date_diff('month', "dob_date", current_timestamp) > 25
        window animal_window as (partition by db_name, farm_id)
    ),
    farm_counts as (
        select
            "db_name", "farm_id", count(farm_id) over farm_window as total_dairy_farms
        from {{ ref("rds__user_and_farm_base") }}
        where farm_type in ('DAIRY_FARM')
        window farm_window as (partition by "db_name")
    ),
    farm_bands as (
        select
            fc."farm_id",
            case
                when fc.db_name = 'hwprodie'
                then 'IE'
                when fc.db_name = 'hwproduk'
                then 'UK'
                when fc.db_name = 'hwprodus'
                then 'US'
                else 'OTHER'
            end as region,
            case
                when total_animals_in_herd <= 100
                then '100 or less'
                when total_animals_in_herd between 101 and 150
                then '100-150'
                when total_animals_in_herd between 151 and 200
                then '151-200'
                when total_animals_in_herd between 201 and 250
                then '201 and 250'
                when total_animals_in_herd between 251 and 300
                then '251-300'
                when total_animals_in_herd between 301 and 350
                then '301-350'
                when total_animals_in_herd between 351 and 400
                then '351-400'
                when total_animals_in_herd > 400
                then '400+'
                else null
            end as total_animals_bucket
        from animal_counts as ac
        inner join
            farm_counts as fc
            on ac."db_name" = fc."db_name"
            and ac."farm_id" = fc."farm_id"
    )
select distinct
    region,
    total_animals_bucket as total_animals_in_herd,
    count(farm_id) over animal_buckets as total_dairy_hw_farms
from farm_bands
window animal_buckets as (partition by region, total_animals_bucket)
order by region, total_animals_bucket
