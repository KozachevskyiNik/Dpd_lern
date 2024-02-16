{% docs dbt_profiler_results__prod_domains_rds__task_type_metrics_by_app  %}
| column_name                  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                      | varchar      | 2,232,178 |             1.00000 |              4 |     False | 2024-02-15 16:36:14.257 UTC |
| farm_id                      | varchar      | 2,232,178 |             1.00000 |          22568 |     False | 2024-02-15 16:36:14.257 UTC |
| origin_app_type              | integer      | 2,232,178 |             0.99769 |              3 |     False | 2024-02-15 16:36:14.257 UTC |
| day_of_task_creation         | timestamp(6) | 2,232,178 |             1.00000 |           3660 |     False | 2024-02-15 16:36:14.257 UTC |
| task_type                    | varchar      | 2,232,178 |             1.00000 |            288 |     False | 2024-02-15 16:36:14.257 UTC |
| total_distinct_tasks_by_type | bigint       | 2,232,178 |             1.00000 |            437 |     False | 2024-02-15 16:36:14.257 UTC |
{% enddocs %}
