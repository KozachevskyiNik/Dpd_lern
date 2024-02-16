{% docs dbt_profiler_results__prod_domains_rds__task_metrics_by_app  %}
| column_name            | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                | varchar      |   451,240 |            0.969225 |              4 |     False | 2024-02-15 16:35:51.334 UTC |
| user_id                | bigint       |   451,240 |            0.969225 |          17876 |     False | 2024-02-15 16:35:51.334 UTC |
| farm_id                | varchar      |   451,240 |            0.969225 |          22542 |     False | 2024-02-15 16:35:51.334 UTC |
| herd_number            | varchar      |   451,240 |            0.969225 |          22540 |     False | 2024-02-15 16:35:51.334 UTC |
| national_herd_id       | varchar      |   451,240 |            0.771004 |          11941 |     False | 2024-02-15 16:35:51.334 UTC |
| county                 | varchar      |   451,240 |            0.906172 |            124 |     False | 2024-02-15 16:35:51.334 UTC |
| plan_type              | varchar      |   451,240 |            0.969225 |             18 |     False | 2024-02-15 16:35:51.334 UTC |
| origin_app_type        | varchar      |   451,240 |            1.000000 |              3 |     False | 2024-02-15 16:35:51.334 UTC |
| farm_option            | varchar      |   451,240 |            0.968482 |              6 |     False | 2024-02-15 16:35:51.334 UTC |
| farm_level             | varchar      |   451,240 |            0.844630 |              3 |     False | 2024-02-15 16:35:51.334 UTC |
| farm_band              | varchar      |   451,240 |            0.967990 |             27 |     False | 2024-02-15 16:35:51.334 UTC |
| total_animals_in_farm  | bigint       |   451,240 |            0.814897 |            452 |     False | 2024-02-15 16:35:51.334 UTC |
| total_paddocks_in_farm | bigint       |   451,240 |            0.012435 |             87 |     False | 2024-02-15 16:35:51.334 UTC |
| month_of_task_creation | timestamp(6) |   451,240 |            1.000000 |            121 |     False | 2024-02-15 16:35:51.334 UTC |
| total_tasks            | bigint       |   451,240 |            1.000000 |            726 |     False | 2024-02-15 16:35:51.334 UTC |
| total_distinct_tasks   | bigint       |   451,240 |            1.000000 |             23 |     False | 2024-02-15 16:35:51.334 UTC |
{% enddocs %}
