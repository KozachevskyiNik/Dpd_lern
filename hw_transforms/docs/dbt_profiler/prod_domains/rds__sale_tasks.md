{% docs dbt_profiler_results__prod_domains_rds__sale_tasks  %}
| column_name  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name      | varchar      | 3,341,826 |            1.000000 |              2 |     False | 2024-01-31 13:58:24.028 UTC |
| animal_id    | varchar      | 3,341,826 |            1.000000 |        3165755 |     False | 2024-01-31 13:58:24.028 UTC |
| type_id      | varchar      | 3,341,826 |            1.000000 |              1 |     False | 2024-01-31 13:58:24.028 UTC |
| sale_date    | timestamp(6) | 3,341,826 |            1.000000 |           1328 |     False | 2024-01-31 13:58:24.028 UTC |
| sold_to_herd | varchar      | 3,341,826 |            0.778089 |          37579 |     False | 2024-01-31 13:58:24.028 UTC |
| sold_to_name | varchar      | 3,341,826 |            0.833186 |          50410 |     False | 2024-01-31 13:58:24.028 UTC |
{% enddocs %}
