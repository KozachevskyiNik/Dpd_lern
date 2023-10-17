{% docs dbt_profiler_results__prod_domains_rds__purchase_tasks  %}
| column_name       | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar      | 1,296,175 |            1.000000 |              2 |     False | 2023-10-17 14:48:31.216 UTC |
| animal_id         | varchar      | 1,296,175 |            1.000000 |        1282649 |     False | 2023-10-17 14:48:31.216 UTC |
| type_id           | varchar      | 1,296,175 |            1.000000 |              1 |     False | 2023-10-17 14:48:31.216 UTC |
| purchase_date     | timestamp(6) | 1,296,175 |            1.000000 |           1226 |     False | 2023-10-17 14:48:31.216 UTC |
| sourced_from_herd | varchar      | 1,296,175 |            0.000688 |            123 |     False | 2023-10-17 14:48:31.216 UTC |
| sourced_from_name | varchar      | 1,296,175 |            0.000831 |            139 |     False | 2023-10-17 14:48:31.216 UTC |
{% enddocs %}
