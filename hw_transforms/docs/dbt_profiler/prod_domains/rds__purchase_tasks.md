{% docs dbt_profiler_results__prod_domains_rds__purchase_tasks  %}
| column_name       | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar      | 1,764,103 |            1.000000 |              2 |     False | 2024-03-26 08:04:33.240 UTC |
| animal_id         | varchar      | 1,764,103 |            1.000000 |        1644264 |     False | 2024-03-26 08:04:33.240 UTC |
| type_id           | varchar      | 1,764,103 |            1.000000 |              1 |     False | 2024-03-26 08:04:33.240 UTC |
| purchase_date     | timestamp(6) | 1,764,103 |            1.000000 |           1388 |     False | 2024-03-26 08:04:33.240 UTC |
| sourced_from_herd | varchar      | 1,764,103 |            0.639014 |          52044 |     False | 2024-03-26 08:04:33.240 UTC |
| sourced_from_name | varchar      | 1,764,103 |            0.690630 |          58487 |     False | 2024-03-26 08:04:33.240 UTC |
{% enddocs %}
