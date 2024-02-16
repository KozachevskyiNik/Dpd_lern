{% docs dbt_profiler_results__prod_domains_rds__purchase_tasks  %}
| column_name       | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar      | 1,646,515 |            1.000000 |              2 |     False | 2024-02-15 16:34:15.156 UTC |
| animal_id         | varchar      | 1,646,515 |            1.000000 |        1529528 |     False | 2024-02-15 16:34:15.156 UTC |
| type_id           | varchar      | 1,646,515 |            1.000000 |              1 |     False | 2024-02-15 16:34:15.156 UTC |
| purchase_date     | timestamp(6) | 1,646,515 |            1.000000 |           1347 |     False | 2024-02-15 16:34:15.156 UTC |
| sourced_from_herd | varchar      | 1,646,515 |            0.633722 |          51589 |     False | 2024-02-15 16:34:15.156 UTC |
| sourced_from_name | varchar      | 1,646,515 |            0.681386 |          57461 |     False | 2024-02-15 16:34:15.156 UTC |
{% enddocs %}
