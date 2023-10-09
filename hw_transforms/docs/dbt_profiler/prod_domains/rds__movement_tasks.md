{% docs dbt_profiler_results__prod_domains_rds__movement_tasks  %}
| column_name                 | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| task_id                     | varchar      | 6,446,766 |            1.000000 |        847,306 |     False | 2023-10-07 12:06:27.894 UTC |
| db_name                     | varchar      | 6,446,766 |            1.000000 |              2 |     False | 2023-10-07 12:06:27.894 UTC |
| country                     | varchar      | 6,446,766 |            1.000000 |              4 |     False | 2023-10-07 12:06:27.894 UTC |
| type_id                     | varchar      | 6,446,766 |            1.000000 |              2 |     False | 2023-10-07 12:06:27.894 UTC |
| animal_id                   | varchar      | 6,446,766 |            1.000000 |      3,336,127 |     False | 2023-10-07 12:06:27.894 UTC |
| farm_id                     | varchar      | 6,446,766 |            1.000000 |         17,525 |     False | 2023-10-07 12:06:27.894 UTC |
| record_date                 | timestamp(6) | 6,446,766 |            1.000000 |          1,270 |     False | 2023-10-07 12:06:27.894 UTC |
| record_belongs_to_app       | varchar      | 6,446,766 |            1.000000 |              1 |     False | 2023-10-07 12:06:27.894 UTC |
| tag                         | varchar      | 6,446,766 |            0.997058 |      3,042,463 |     False | 2023-10-07 12:06:27.894 UTC |
| dob_date                    | timestamp(6) | 6,446,766 |            0.997058 |          7,281 |     False | 2023-10-07 12:06:27.894 UTC |
| breed                       | varchar      | 6,446,766 |            0.997058 |            235 |     False | 2023-10-07 12:06:27.894 UTC |
| moved_in_date               | timestamp(6) | 6,446,766 |            0.919655 |          6,648 |     False | 2023-10-07 12:06:27.894 UTC |
| off_herd_date               | timestamp(6) | 6,446,766 |            0.835348 |          1,311 |     False | 2023-10-07 12:06:27.894 UTC |
| off_herd_reason             | varchar      | 6,446,766 |            0.459543 |             30 |     False | 2023-10-07 12:06:27.894 UTC |
| sale_price                  | double       | 6,446,766 |            0.051496 |          9,941 |     False | 2023-10-07 12:06:27.894 UTC |
| purchase_price              | double       | 6,446,766 |            0.050205 |          2,132 |     False | 2023-10-07 12:06:27.894 UTC |
| move_cert_type              | varchar      | 6,446,766 |            0.000000 |              0 |     False | 2023-10-07 12:06:27.894 UTC |
| operator_herd_number        | varchar      | 6,446,766 |            0.000473 |            323 |     False | 2023-10-07 12:06:27.894 UTC |
| operator_name               | varchar      | 6,446,766 |            0.000695 |            377 |     False | 2023-10-07 12:06:27.894 UTC |
| operator_type               | varchar      | 6,446,766 |            0.000695 |              2 |     False | 2023-10-07 12:06:27.894 UTC |
| move_apply_success_datetime | timestamp(6) | 6,446,766 |            0.000000 |              0 |     False | 2023-10-07 12:06:27.894 UTC |
| herd_number                 | varchar      | 6,446,766 |            0.999843 |         17,491 |     False | 2023-10-07 12:06:27.894 UTC |
| city                        | varchar      | 6,446,766 |            0.999843 |          1,383 |     False | 2023-10-07 12:06:27.894 UTC |
| county                      | varchar      | 6,446,766 |            0.907232 |            119 |     False | 2023-10-07 12:06:27.894 UTC |
{% enddocs %}
