{% docs dbt_profiler_results__prod_domains_rds__sale_tasks  %}
| column_name  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name      | varchar      | 2,814,462 |            1.000000 |              2 |     False | 2023-10-17 14:48:49.617 UTC |
| animal_id    | varchar      | 2,814,462 |            1.000000 |        2767662 |     False | 2023-10-17 14:48:49.617 UTC |
| type_id      | varchar      | 2,814,462 |            1.000000 |              1 |     False | 2023-10-17 14:48:49.617 UTC |
| sale_date    | timestamp(6) | 2,814,462 |            1.000000 |           1222 |     False | 2023-10-17 14:48:49.617 UTC |
| sold_to_herd | varchar      | 2,814,462 |            0.000061 |             45 |     False | 2023-10-17 14:48:49.617 UTC |
| sold_to_name | varchar      | 2,814,462 |            0.000088 |             58 |     False | 2023-10-17 14:48:49.617 UTC |
{% enddocs %}
