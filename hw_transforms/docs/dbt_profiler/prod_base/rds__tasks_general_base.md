{% docs dbt_profiler_results__prod_base_rds__tasks_general_base  %}
| column_name             | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                 | varchar      |    27,193 |            1.000000 |              4 |     False | 2024-02-15 16:29:22.661 UTC |
| country                 | varchar      |    27,193 |            1.000000 |              8 |     False | 2024-02-15 16:29:22.661 UTC |
| task_id                 | bigint       |    27,193 |            1.000000 |          21372 |     False | 2024-02-15 16:29:22.661 UTC |
| guid_id                 | bigint       |    27,193 |            1.000000 |          26928 |     False | 2024-02-15 16:29:22.661 UTC |
| device_id               | bigint       |    27,193 |            0.235208 |            835 |     False | 2024-02-15 16:29:22.661 UTC |
| task_type_id            | varchar      |    27,193 |            1.000000 |             66 |     False | 2024-02-15 16:29:22.661 UTC |
| task_type               | varchar      |    27,193 |            1.000000 |             14 |     False | 2024-02-15 16:29:22.661 UTC |
| status_id               | varchar      |    27,193 |            1.000000 |              2 |     False | 2024-02-15 16:29:22.661 UTC |
| farm_id                 | varchar      |    27,193 |            1.000000 |           3927 |     False | 2024-02-15 16:29:22.661 UTC |
| record_belongs_to_app   | varchar      |    27,193 |            0.065458 |              3 |     False | 2024-02-15 16:29:22.661 UTC |
| animal_id               | varchar      |    27,193 |            0.021292 |            570 |     False | 2024-02-15 16:29:22.661 UTC |
| record_date             | timestamp(6) |    27,193 |            1.000000 |           2412 |     False | 2024-02-15 16:29:22.661 UTC |
| task_notes              | varchar      |    27,193 |            0.134814 |           2510 |     False | 2024-02-15 16:29:22.661 UTC |
| record_created_datetime | timestamp(6) |    27,193 |            1.000000 |          15547 |     False | 2024-02-15 16:29:22.661 UTC |
{% enddocs %}
