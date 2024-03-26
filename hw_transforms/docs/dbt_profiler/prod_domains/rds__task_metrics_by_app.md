{% docs dbt_profiler_results__prod_domains_rds__task_metrics_by_app  %}
| column_name            | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                | varchar      |   463,845 |            0.970186 |              4 |     False | 2024-03-26 08:07:33.032 UTC |
| user_id                | bigint       |   463,845 |            0.970186 |          18236 |     False | 2024-03-26 08:07:33.032 UTC |
| farm_id                | varchar      |   463,845 |            0.970186 |          23045 |     False | 2024-03-26 08:07:33.032 UTC |
| herd_number            | varchar      |   463,845 |            0.970186 |          23043 |     False | 2024-03-26 08:07:33.032 UTC |
| national_herd_id       | varchar      |   463,845 |            0.771296 |          12290 |     False | 2024-03-26 08:07:33.032 UTC |
| county                 | varchar      |   463,845 |            0.903269 |            124 |     False | 2024-03-26 08:07:33.032 UTC |
| plan_type              | varchar      |   463,845 |            0.970186 |             17 |     False | 2024-03-26 08:07:33.032 UTC |
| origin_app_type        | varchar      |   463,845 |            1.000000 |              3 |     False | 2024-03-26 08:07:33.032 UTC |
| farm_option            | varchar      |   463,845 |            0.969427 |              6 |     False | 2024-03-26 08:07:33.032 UTC |
| farm_level             | varchar      |   463,845 |            0.844450 |              3 |     False | 2024-03-26 08:07:33.032 UTC |
| farm_band              | varchar      |   463,845 |            0.969281 |             27 |     False | 2024-03-26 08:07:33.032 UTC |
| total_animals_in_farm  | bigint       |   463,845 |            0.811545 |            421 |     False | 2024-03-26 08:07:33.032 UTC |
| total_paddocks_in_farm | bigint       |   463,845 |            0.012597 |             90 |     False | 2024-03-26 08:07:33.032 UTC |
| month_of_task_creation | timestamp(6) |   463,845 |            1.000000 |            122 |     False | 2024-03-26 08:07:33.032 UTC |
| total_tasks            | bigint       |   463,845 |            1.000000 |            742 |     False | 2024-03-26 08:07:33.032 UTC |
| total_distinct_tasks   | bigint       |   463,845 |            1.000000 |             23 |     False | 2024-03-26 08:07:33.032 UTC |
{% enddocs %}
