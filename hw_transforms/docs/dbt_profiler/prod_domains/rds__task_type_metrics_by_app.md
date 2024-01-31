{% docs dbt_profiler_results__prod_domains_rds__task_type_metrics_by_app  %}
| column_name                  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                      | varchar      | 2,290,132 |            1.000000 |              4 |     False | 2024-01-31 13:59:53.196 UTC |
| farm_id                      | varchar      | 2,290,132 |            1.000000 |          22514 |     False | 2024-01-31 13:59:53.196 UTC |
| origin_app_type              | integer      | 2,290,132 |            0.996442 |              3 |     False | 2024-01-31 13:59:53.196 UTC |
| day_of_task_creation         | timestamp(6) | 2,290,132 |            1.000000 |           3649 |     False | 2024-01-31 13:59:53.196 UTC |
| task_type                    | varchar      | 2,290,132 |            1.000000 |            281 |     False | 2024-01-31 13:59:53.196 UTC |
| total_distinct_tasks_by_type | bigint       | 2,290,132 |            1.000000 |            436 |     False | 2024-01-31 13:59:53.196 UTC |
{% enddocs %}
