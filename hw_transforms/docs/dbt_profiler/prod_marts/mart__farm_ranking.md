{% docs dbt_profiler_results__prod_marts_mart__farm_ranking  %}
| column_name                   | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                       | varchar   |    23,996 |            1.000000 |              4 |     False | 2024-01-31 14:01:54.467 UTC |
| ranking_date                  | date      |    23,996 |            1.000000 |              1 |     False | 2024-01-31 14:01:54.467 UTC |
| user_id                       | bigint    |    23,996 |            1.000000 |          14011 |     False | 2024-01-31 14:01:54.467 UTC |
| farm_id                       | varchar   |    23,996 |            1.000000 |          16218 |     False | 2024-01-31 14:01:54.467 UTC |
| herd_number                   | varchar   |    23,996 |            1.000000 |          16209 |     False | 2024-01-31 14:01:54.467 UTC |
| national_herd_id              | varchar   |    23,996 |            0.524337 |           8940 |     False | 2024-01-31 14:01:54.467 UTC |
| county                        | varchar   |    23,996 |            0.742957 |            116 |     False | 2024-01-31 14:01:54.467 UTC |
| plan_type                     | varchar   |    23,996 |            1.000000 |             16 |     False | 2024-01-31 14:01:54.467 UTC |
| origin_app_type               | varchar   |    23,996 |            1.000000 |              3 |     False | 2024-01-31 14:01:54.467 UTC |
| farm_option                   | varchar   |    23,996 |            0.961410 |              6 |     False | 2024-01-31 14:01:54.467 UTC |
| farm_level                    | varchar   |    23,996 |            0.619478 |              3 |     False | 2024-01-31 14:01:54.467 UTC |
| farm_band                     | varchar   |    23,996 |            0.998333 |             27 |     False | 2024-01-31 14:01:54.467 UTC |
| yearly_app_login              | double    |    23,996 |            1.000000 |            543 |     False | 2024-01-31 14:01:54.467 UTC |
| tasks_per_primary_unit        | double    |    23,996 |            1.000000 |            486 |     False | 2024-01-31 14:01:54.467 UTC |
| task_types_and_reports        | double    |    23,996 |            1.000000 |            389 |     False | 2024-01-31 14:01:54.467 UTC |
| login_freq_metric             | integer   |    23,996 |            1.000000 |              5 |     False | 2024-01-31 14:01:54.467 UTC |
| tasks_per_primary_metric      | integer   |    23,996 |            1.000000 |              5 |     False | 2024-01-31 14:01:54.467 UTC |
| task_types_and_reports_metric | integer   |    23,996 |            1.000000 |              5 |     False | 2024-01-31 14:01:54.467 UTC |
| final_star_ranking            | double    |    23,996 |            1.000000 |             13 |     False | 2024-01-31 14:01:54.467 UTC |
{% enddocs %}
