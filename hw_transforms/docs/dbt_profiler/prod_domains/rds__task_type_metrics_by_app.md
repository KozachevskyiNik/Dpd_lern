{% docs dbt_profiler_results__prod_domains_rds__task_type_metrics_by_app  %}
| column_name                  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                      | varchar      | 2,308,299 |            1.000000 |              4 |     False | 2024-03-26 08:07:54.385 UTC |
| farm_id                      | varchar      | 2,308,299 |            1.000000 |          23074 |     False | 2024-03-26 08:07:54.385 UTC |
| origin_app_type              | integer      | 2,308,299 |            0.997602 |              3 |     False | 2024-03-26 08:07:54.385 UTC |
| day_of_task_creation         | timestamp(6) | 2,308,299 |            1.000000 |           3702 |     False | 2024-03-26 08:07:54.385 UTC |
| task_type                    | varchar      | 2,308,299 |            1.000000 |            304 |     False | 2024-03-26 08:07:54.385 UTC |
| total_distinct_tasks_by_type | bigint       | 2,308,299 |            1.000000 |            450 |     False | 2024-03-26 08:07:54.385 UTC |
{% enddocs %}
