{% docs dbt_profiler_results__prod_domains_rds__purchase_tasks  %}
| column_name       | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar      | 1,785,245 |            1.000000 |              2 |     False | 2024-01-31 13:57:32.722 UTC |
| animal_id         | varchar      | 1,785,245 |            1.000000 |        1512652 |     False | 2024-01-31 13:57:32.722 UTC |
| type_id           | varchar      | 1,785,245 |            1.000000 |              1 |     False | 2024-01-31 13:57:32.722 UTC |
| purchase_date     | timestamp(6) | 1,785,245 |            1.000000 |           1332 |     False | 2024-01-31 13:57:32.722 UTC |
| sourced_from_herd | varchar      | 1,785,245 |            0.665774 |          64726 |     False | 2024-01-31 13:57:32.722 UTC |
| sourced_from_name | varchar      | 1,785,245 |            0.710551 |          71060 |     False | 2024-01-31 13:57:32.722 UTC |
{% enddocs %}
