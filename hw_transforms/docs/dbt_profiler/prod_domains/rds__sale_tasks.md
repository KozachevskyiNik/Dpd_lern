{% docs dbt_profiler_results__prod_domains_rds__sale_tasks  %}
| column_name  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name      | varchar      | 2,968,570 |            1.000000 |              2 |     False | 2023-10-26 15:21:07.084 UTC |
| animal_id    | varchar      | 2,968,570 |            1.000000 |        2811765 |     False | 2023-10-26 15:21:07.084 UTC |
| type_id      | varchar      | 2,968,570 |            1.000000 |              1 |     False | 2023-10-26 15:21:07.084 UTC |
| sale_date    | timestamp(6) | 2,968,570 |            1.000000 |           1231 |     False | 2023-10-26 15:21:07.084 UTC |
| sold_to_herd | varchar      | 2,968,570 |            0.794276 |          36315 |     False | 2023-10-26 15:21:07.084 UTC |
| sold_to_name | varchar      | 2,968,570 |            0.844812 |          47767 |     False | 2023-10-26 15:21:07.084 UTC |
{% enddocs %}
