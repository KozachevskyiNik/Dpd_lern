{% docs dbt_profiler_results__prod_marts_mart__farm_ranking  %}
| column_name                   | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                       | varchar   |   460,682 |            0.997964 |              4 |     False | 2024-03-25 13:28:05.860 UTC |
| ranking_date                  | date      |   460,682 |            1.000000 |              7 |     False | 2024-03-25 13:28:05.860 UTC |
| user_id                       | bigint    |   460,682 |            0.997964 |          32567 |     False | 2024-03-25 13:28:05.860 UTC |
| farm_id                       | varchar   |   460,682 |            0.997964 |          51273 |     False | 2024-03-25 13:28:05.860 UTC |
| herd_number                   | varchar   |   460,682 |            0.997964 |          51272 |     False | 2024-03-25 13:28:05.860 UTC |
| national_herd_id              | varchar   |   460,682 |            0.262904 |          12959 |     False | 2024-03-25 13:28:05.860 UTC |
| county                        | varchar   |   460,682 |            0.677658 |            125 |     False | 2024-03-25 13:28:05.860 UTC |
| plan_type                     | varchar   |   460,682 |            0.997964 |             19 |     False | 2024-03-25 13:28:05.860 UTC |
| origin_app_type               | varchar   |   460,682 |            1.000000 |              3 |     False | 2024-03-25 13:28:05.860 UTC |
| farm_option                   | varchar   |   460,682 |            0.784177 |              6 |     False | 2024-03-25 13:28:05.860 UTC |
| farm_level                    | varchar   |   460,682 |            0.284756 |              3 |     False | 2024-03-25 13:28:05.860 UTC |
| farm_band                     | varchar   |   460,682 |            0.909226 |             27 |     False | 2024-03-25 13:28:05.860 UTC |
| yearly_app_login              | double    |   460,682 |            1.000000 |           1090 |     False | 2024-03-25 13:28:05.860 UTC |
| tasks_per_primary_unit        | double    |   460,682 |            1.000000 |            657 |     False | 2024-03-25 13:28:05.860 UTC |
| task_types_and_reports        | double    |   460,682 |            1.000000 |            396 |     False | 2024-03-25 13:28:05.860 UTC |
| login_freq_metric             | integer   |   460,682 |            1.000000 |              5 |     False | 2024-03-25 13:28:05.860 UTC |
| tasks_per_primary_metric      | integer   |   460,682 |            1.000000 |              5 |     False | 2024-03-25 13:28:05.860 UTC |
| task_types_and_reports_metric | integer   |   460,682 |            1.000000 |              5 |     False | 2024-03-25 13:28:05.860 UTC |
| final_star_ranking            | double    |   460,682 |            1.000000 |             13 |     False | 2024-03-25 13:28:05.860 UTC |
{% enddocs %}
