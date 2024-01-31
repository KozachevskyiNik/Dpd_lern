{% docs dbt_profiler_results__prod_base_rds__tasks_general_base  %}
| column_name             | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                 | varchar      |    26,484 |            1.000000 |              4 |     False | 2024-01-31 13:51:42.637 UTC |
| country                 | varchar      |    26,484 |            1.000000 |              8 |     False | 2024-01-31 13:51:42.637 UTC |
| task_id                 | bigint       |    26,484 |            1.000000 |          21183 |     False | 2024-01-31 13:51:42.637 UTC |
| guid_id                 | bigint       |    26,484 |            1.000000 |          26352 |     False | 2024-01-31 13:51:42.637 UTC |
| device_id               | bigint       |    26,484 |            0.213034 |            757 |     False | 2024-01-31 13:51:42.637 UTC |
| task_type_id            | varchar      |    26,484 |            1.000000 |             54 |     False | 2024-01-31 13:51:42.637 UTC |
| task_type               | varchar      |    26,484 |            1.000000 |             10 |     False | 2024-01-31 13:51:42.637 UTC |
| status_id               | varchar      |    26,484 |            1.000000 |              2 |     False | 2024-01-31 13:51:42.637 UTC |
| farm_id                 | varchar      |    26,484 |            1.000000 |           3870 |     False | 2024-01-31 13:51:42.637 UTC |
| record_belongs_to_app   | varchar      |    26,484 |            0.054372 |              2 |     False | 2024-01-31 13:51:42.637 UTC |
| animal_id               | varchar      |    26,484 |            0.012196 |            323 |     False | 2024-01-31 13:51:42.637 UTC |
| record_date             | timestamp(6) |    26,484 |            1.000000 |           2398 |     False | 2024-01-31 13:51:42.637 UTC |
| task_notes              | varchar      |    26,484 |            0.136498 |           2472 |     False | 2024-01-31 13:51:42.637 UTC |
| record_created_datetime | timestamp(6) |    26,484 |            1.000000 |          15077 |     False | 2024-01-31 13:51:42.637 UTC |
{% enddocs %}
