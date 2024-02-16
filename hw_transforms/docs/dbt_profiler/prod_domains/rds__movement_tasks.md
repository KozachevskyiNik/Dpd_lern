{% docs dbt_profiler_results__prod_domains_rds__movement_tasks  %}
| column_name                 | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| task_id                     | varchar      | 6,864,604 |            1.000000 |         983938 |     False | 2024-02-15 16:33:31.286 UTC |
| db_name                     | varchar      | 6,864,604 |            1.000000 |              2 |     False | 2024-02-15 16:33:31.286 UTC |
| country                     | varchar      | 6,864,604 |            1.000000 |              4 |     False | 2024-02-15 16:33:31.286 UTC |
| type_id                     | varchar      | 6,864,604 |            1.000000 |              2 |     False | 2024-02-15 16:33:31.286 UTC |
| animal_id                   | varchar      | 6,864,604 |            1.000000 |        3908248 |     False | 2024-02-15 16:33:31.286 UTC |
| farm_id                     | varchar      | 6,864,604 |            1.000000 |          18994 |     False | 2024-02-15 16:33:31.286 UTC |
| record_date                 | timestamp(6) | 6,864,604 |            1.000000 |           1401 |     False | 2024-02-15 16:33:31.286 UTC |
| record_belongs_to_app       | varchar      | 6,864,604 |            1.000000 |              1 |     False | 2024-02-15 16:33:31.286 UTC |
| tag                         | varchar      | 6,864,604 |            0.999985 |        3556565 |     False | 2024-02-15 16:33:31.286 UTC |
| dob_date                    | timestamp(6) | 6,864,604 |            0.999985 |           7448 |     False | 2024-02-15 16:33:31.286 UTC |
| breed                       | varchar      | 6,864,604 |            0.999985 |            245 |     False | 2024-02-15 16:33:31.286 UTC |
| moved_in_date               | timestamp(6) | 6,864,604 |            0.915832 |           6834 |     False | 2024-02-15 16:33:31.286 UTC |
| off_herd_date               | timestamp(6) | 6,864,604 |            0.848425 |           1457 |     False | 2024-02-15 16:33:31.286 UTC |
| off_herd_reason             | varchar      | 6,864,604 |            0.542290 |             31 |     False | 2024-02-15 16:33:31.286 UTC |
| sale_price                  | double       | 6,864,604 |            0.056200 |          14363 |     False | 2024-02-15 16:33:31.286 UTC |
| purchase_price              | double       | 6,864,604 |            0.056772 |           2423 |     False | 2024-02-15 16:33:31.286 UTC |
| move_cert_type              | varchar      | 6,864,604 |            0.000000 |              0 |     False | 2024-02-15 16:33:31.286 UTC |
| operator_herd_number        | varchar      | 6,864,604 |            0.693505 |          68242 |     False | 2024-02-15 16:33:31.286 UTC |
| operator_name               | varchar      | 6,864,604 |            0.774489 |          87632 |     False | 2024-02-15 16:33:31.286 UTC |
| operator_type               | varchar      | 6,864,604 |            0.774489 |              3 |     False | 2024-02-15 16:33:31.286 UTC |
| move_apply_success_datetime | timestamp(6) | 6,864,604 |            0.000000 |              0 |     False | 2024-02-15 16:33:31.286 UTC |
| herd_number                 | varchar      | 6,864,604 |            1.000000 |          18994 |     False | 2024-02-15 16:33:31.286 UTC |
| city                        | varchar      | 6,864,604 |            1.000000 |           1415 |     False | 2024-02-15 16:33:31.286 UTC |
| county                      | varchar      | 6,864,604 |            0.885693 |            120 |     False | 2024-02-15 16:33:31.286 UTC |
{% enddocs %}
