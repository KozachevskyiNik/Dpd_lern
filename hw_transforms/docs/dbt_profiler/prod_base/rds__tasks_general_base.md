{% docs dbt_profiler_results__prod_base_rds__tasks_general_base  %}
| column_name             | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                 | varchar      |    33,203 |            1.000000 |              4 |     False | 2024-03-25 13:22:35.415 UTC |
| country                 | varchar      |    33,203 |            1.000000 |              8 |     False | 2024-03-25 13:22:35.415 UTC |
| task_id                 | bigint       |    33,203 |            1.000000 |          22218 |     False | 2024-03-25 13:22:35.415 UTC |
| guid_id                 | bigint       |    33,203 |            1.000000 |          30380 |     False | 2024-03-25 13:22:35.415 UTC |
| device_id               | bigint       |    33,203 |            0.375538 |           1075 |     False | 2024-03-25 13:22:35.415 UTC |
| task_type_id            | varchar      |    33,203 |            1.000000 |             78 |     False | 2024-03-25 13:22:35.415 UTC |
| task_type               | varchar      |    33,203 |            1.000000 |             15 |     False | 2024-03-25 13:22:35.415 UTC |
| status_id               | varchar      |    33,203 |            1.000000 |              2 |     False | 2024-03-25 13:22:35.415 UTC |
| farm_id                 | varchar      |    33,203 |            1.000000 |           4118 |     False | 2024-03-25 13:22:35.415 UTC |
| record_belongs_to_app   | varchar      |    33,203 |            0.189019 |              3 |     False | 2024-03-25 13:22:35.415 UTC |
| animal_id               | varchar      |    33,203 |            0.145559 |           4620 |     False | 2024-03-25 13:22:35.415 UTC |
| record_date             | timestamp(6) |    33,203 |            1.000000 |           2460 |     False | 2024-03-25 13:22:35.415 UTC |
| task_notes              | varchar      |    33,203 |            0.119658 |           2644 |     False | 2024-03-25 13:22:35.415 UTC |
| record_created_datetime | timestamp(6) |    33,203 |            1.000000 |          18580 |     False | 2024-03-25 13:22:35.415 UTC |
{% enddocs %}
