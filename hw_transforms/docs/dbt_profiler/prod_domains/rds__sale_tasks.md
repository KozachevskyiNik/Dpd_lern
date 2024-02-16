{% docs dbt_profiler_results__prod_domains_rds__sale_tasks  %}
| column_name  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name      | varchar      | 3,375,179 |            1.000000 |              2 |     False | 2024-02-15 16:35:03.232 UTC |
| animal_id    | varchar      | 3,375,179 |            1.000000 |        3239266 |     False | 2024-02-15 16:35:03.232 UTC |
| type_id      | varchar      | 3,375,179 |            1.000000 |              1 |     False | 2024-02-15 16:35:03.232 UTC |
| sale_date    | timestamp(6) | 3,375,179 |            1.000000 |           1343 |     False | 2024-02-15 16:35:03.232 UTC |
| sold_to_herd | varchar      | 3,375,179 |            0.776834 |          37334 |     False | 2024-02-15 16:35:03.232 UTC |
| sold_to_name | varchar      | 3,375,179 |            0.829857 |          49821 |     False | 2024-02-15 16:35:03.232 UTC |
{% enddocs %}
