{% docs dbt_profiler_results__prod_domains_bq__get_login_frequency  %}
| column_name       | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar   |   108,580 |            1.000000 |              4 |     False | 2024-02-15 16:30:03.481 UTC |
| user_id           | bigint    |   108,580 |            1.000000 |          32089 |     False | 2024-02-15 16:30:03.481 UTC |
| farm_id           | varchar   |   108,580 |            1.000000 |          49978 |     False | 2024-02-15 16:30:03.481 UTC |
| herd_number       | varchar   |   108,580 |            1.000000 |          49964 |     False | 2024-02-15 16:30:03.481 UTC |
| national_herd_id  | varchar   |   108,580 |            0.414017 |          12609 |     False | 2024-02-15 16:30:03.481 UTC |
| county            | varchar   |   108,580 |            0.737115 |            125 |     False | 2024-02-15 16:30:03.481 UTC |
| plan_type         | varchar   |   108,580 |            1.000000 |             19 |     False | 2024-02-15 16:30:03.481 UTC |
| origin_app_type   | varchar   |   108,580 |            1.000000 |              3 |     False | 2024-02-15 16:30:03.481 UTC |
| farm_option       | varchar   |   108,580 |            0.870087 |              6 |     False | 2024-02-15 16:30:03.481 UTC |
| farm_level        | varchar   |   108,580 |            0.459753 |              3 |     False | 2024-02-15 16:30:03.481 UTC |
| farm_band         | varchar   |   108,580 |            0.939096 |             27 |     False | 2024-02-15 16:30:03.481 UTC |
| month_date        | date      |   108,580 |            0.625520 |              4 |     False | 2024-02-15 16:30:03.481 UTC |
| monthly_app_login | bigint    |   108,580 |            0.471523 |            353 |     False | 2024-02-15 16:30:03.481 UTC |
{% enddocs %}
