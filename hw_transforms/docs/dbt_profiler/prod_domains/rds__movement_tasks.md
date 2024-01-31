{% docs dbt_profiler_results__prod_domains_rds__movement_tasks  %}
| column_name                 | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| task_id                     | varchar      | 8,126,264 |            1.000000 |        1244197 |     False | 2024-01-31 13:57:03.790 UTC |
| db_name                     | varchar      | 8,126,264 |            1.000000 |              2 |     False | 2024-01-31 13:57:03.790 UTC |
| country                     | varchar      | 8,126,264 |            1.000000 |              4 |     False | 2024-01-31 13:57:03.790 UTC |
| type_id                     | varchar      | 8,126,264 |            1.000000 |              2 |     False | 2024-01-31 13:57:03.790 UTC |
| animal_id                   | varchar      | 8,126,264 |            1.000000 |        3835800 |     False | 2024-01-31 13:57:03.790 UTC |
| farm_id                     | varchar      | 8,126,264 |            1.000000 |          18793 |     False | 2024-01-31 13:57:03.790 UTC |
| record_date                 | timestamp(6) | 8,126,264 |            1.000000 |           1386 |     False | 2024-01-31 13:57:03.790 UTC |
| record_belongs_to_app       | varchar      | 8,126,264 |            1.000000 |              1 |     False | 2024-01-31 13:57:03.790 UTC |
| tag                         | varchar      | 8,126,264 |            0.999945 |        3492565 |     False | 2024-01-31 13:57:03.790 UTC |
| dob_date                    | timestamp(6) | 8,126,264 |            0.999945 |           7431 |     False | 2024-01-31 13:57:03.790 UTC |
| breed                       | varchar      | 8,126,264 |            0.999945 |            243 |     False | 2024-01-31 13:57:03.790 UTC |
| moved_in_date               | timestamp(6) | 8,126,264 |            0.929122 |           6811 |     False | 2024-01-31 13:57:03.790 UTC |
| off_herd_date               | timestamp(6) | 8,126,264 |            0.840575 |           1440 |     False | 2024-01-31 13:57:03.790 UTC |
| off_herd_reason             | varchar      | 8,126,264 |            0.570358 |             31 |     False | 2024-01-31 13:57:03.790 UTC |
| sale_price                  | double       | 8,126,264 |            0.068876 |          13668 |     False | 2024-01-31 13:57:03.790 UTC |
| purchase_price              | double       | 8,126,264 |            0.131970 |           2322 |     False | 2024-01-31 13:57:03.790 UTC |
| move_cert_type              | varchar      | 8,126,264 |            0.000000 |              0 |     False | 2024-01-31 13:57:03.790 UTC |
| operator_herd_number        | varchar      | 8,126,264 |            0.626432 |          78159 |     False | 2024-01-31 13:57:03.790 UTC |
| operator_name               | varchar      | 8,126,264 |            0.816576 |          98554 |     False | 2024-01-31 13:57:03.790 UTC |
| operator_type               | varchar      | 8,126,264 |            0.816576 |              3 |     False | 2024-01-31 13:57:03.790 UTC |
| move_apply_success_datetime | timestamp(6) | 8,126,264 |            0.000000 |              0 |     False | 2024-01-31 13:57:03.790 UTC |
| herd_number                 | varchar      | 8,126,264 |            1.000000 |          18793 |     False | 2024-01-31 13:57:03.790 UTC |
| city                        | varchar      | 8,126,264 |            1.000000 |           1408 |     False | 2024-01-31 13:57:03.790 UTC |
| county                      | varchar      | 8,126,264 |            0.897709 |            120 |     False | 2024-01-31 13:57:03.790 UTC |
{% enddocs %}
