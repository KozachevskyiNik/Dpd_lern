{% docs dbt_profiler_results__prod_domains_rds__purchase_tasks  %}
| column_name       | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar      | 1,591,675 |            1.000000 |              2 |     False | 2023-10-26 15:20:47.875 UTC |
| animal_id         | varchar      | 1,591,675 |            1.000000 |        1326475 |     False | 2023-10-26 15:20:47.875 UTC |
| type_id           | varchar      | 1,591,675 |            1.000000 |              1 |     False | 2023-10-26 15:20:47.875 UTC |
| purchase_date     | timestamp(6) | 1,591,675 |            1.000000 |           1235 |     False | 2023-10-26 15:20:47.875 UTC |
| sourced_from_herd | varchar      | 1,591,675 |            0.665740 |          63767 |     False | 2023-10-26 15:20:47.875 UTC |
| sourced_from_name | varchar      | 1,591,675 |            0.707021 |          69306 |     False | 2023-10-26 15:20:47.875 UTC |
{% enddocs %}
