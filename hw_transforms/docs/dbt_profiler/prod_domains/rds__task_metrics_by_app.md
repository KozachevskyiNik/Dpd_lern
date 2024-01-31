{% docs dbt_profiler_results__prod_domains_rds__task_metrics_by_app  %}
| column_name            | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                | varchar      |   454,661 |            0.963465 |              4 |     False | 2024-01-31 13:59:22.829 UTC |
| user_id                | bigint       |   454,661 |            0.963465 |          17815 |     False | 2024-01-31 13:59:22.829 UTC |
| farm_id                | varchar      |   454,661 |            0.963465 |          22487 |     False | 2024-01-31 13:59:22.829 UTC |
| herd_number            | varchar      |   454,661 |            0.963465 |          22485 |     False | 2024-01-31 13:59:22.829 UTC |
| national_herd_id       | varchar      |   454,661 |            0.766611 |          11842 |     False | 2024-01-31 13:59:22.829 UTC |
| county                 | varchar      |   454,661 |            0.902690 |            123 |     False | 2024-01-31 13:59:22.829 UTC |
| plan_type              | varchar      |   454,661 |            0.963465 |             17 |     False | 2024-01-31 13:59:22.829 UTC |
| origin_app_type        | varchar      |   454,661 |            1.000000 |              3 |     False | 2024-01-31 13:59:22.829 UTC |
| farm_option            | varchar      |   454,661 |            0.962717 |              6 |     False | 2024-01-31 13:59:22.829 UTC |
| farm_level             | varchar      |   454,661 |            0.838825 |              3 |     False | 2024-01-31 13:59:22.829 UTC |
| farm_band              | varchar      |   454,661 |            0.962207 |             27 |     False | 2024-01-31 13:59:22.829 UTC |
| total_animals_in_farm  | bigint       |   454,661 |            0.809425 |            462 |     False | 2024-01-31 13:59:22.829 UTC |
| total_paddocks_in_farm | bigint       |   454,661 |            0.012389 |             85 |     False | 2024-01-31 13:59:22.829 UTC |
| month_of_task_creation | timestamp(6) |   454,661 |            1.000000 |            120 |     False | 2024-01-31 13:59:22.829 UTC |
| total_tasks            | bigint       |   454,661 |            1.000000 |            731 |     False | 2024-01-31 13:59:22.829 UTC |
| total_distinct_tasks   | bigint       |   454,661 |            1.000000 |             23 |     False | 2024-01-31 13:59:22.829 UTC |
{% enddocs %}
