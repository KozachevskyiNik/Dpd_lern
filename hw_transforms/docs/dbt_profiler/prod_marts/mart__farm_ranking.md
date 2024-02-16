{% docs dbt_profiler_results__prod_marts_mart__farm_ranking  %}
| column_name                   | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                       | varchar   |    64,489 |            0.997922 |              4 |     False | 2024-02-15 16:37:36.221 UTC |
| ranking_date                  | date      |    64,489 |            1.000000 |              1 |     False | 2024-02-15 16:37:36.221 UTC |
| user_id                       | bigint    |    64,489 |            0.997922 |          32049 |     False | 2024-02-15 16:37:36.221 UTC |
| farm_id                       | varchar   |    64,489 |            0.997922 |          49845 |     False | 2024-02-15 16:37:36.221 UTC |
| herd_number                   | varchar   |    64,489 |            0.997922 |          49831 |     False | 2024-02-15 16:37:36.221 UTC |
| national_herd_id              | varchar   |    64,489 |            0.261998 |          12609 |     False | 2024-02-15 16:37:36.221 UTC |
| county                        | varchar   |    64,489 |            0.684644 |            125 |     False | 2024-02-15 16:37:36.221 UTC |
| plan_type                     | varchar   |    64,489 |            0.997922 |             19 |     False | 2024-02-15 16:37:36.221 UTC |
| origin_app_type               | varchar   |    64,489 |            1.000000 |              3 |     False | 2024-02-15 16:37:36.221 UTC |
| farm_option                   | varchar   |    64,489 |            0.785111 |              6 |     False | 2024-02-15 16:37:36.221 UTC |
| farm_level                    | varchar   |    64,489 |            0.288034 |              3 |     False | 2024-02-15 16:37:36.221 UTC |
| farm_band                     | varchar   |    64,489 |            0.907240 |             27 |     False | 2024-02-15 16:37:36.221 UTC |
| yearly_app_login              | double    |    64,489 |            1.000000 |            934 |     False | 2024-02-15 16:37:36.221 UTC |
| tasks_per_primary_unit        | double    |    64,489 |            1.000000 |            523 |     False | 2024-02-15 16:37:36.221 UTC |
| task_types_and_reports        | double    |    64,489 |            1.000000 |            395 |     False | 2024-02-15 16:37:36.221 UTC |
| login_freq_metric             | integer   |    64,489 |            1.000000 |              5 |     False | 2024-02-15 16:37:36.221 UTC |
| tasks_per_primary_metric      | integer   |    64,489 |            1.000000 |              5 |     False | 2024-02-15 16:37:36.221 UTC |
| task_types_and_reports_metric | integer   |    64,489 |            1.000000 |              5 |     False | 2024-02-15 16:37:36.221 UTC |
| final_star_ranking            | double    |    64,489 |            1.000000 |             13 |     False | 2024-02-15 16:37:36.221 UTC |
{% enddocs %}
