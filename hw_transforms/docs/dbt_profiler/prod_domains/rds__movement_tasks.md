{% docs dbt_profiler_results__prod_domains_rds__movement_tasks  %}
| column_name                 | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| task_id                     | varchar      | 7,531,780 |            1.000000 |        1042930 |     False | 2024-03-26 08:02:27.945 UTC |
| db_name                     | varchar      | 7,531,780 |            1.000000 |              2 |     False | 2024-03-26 08:02:27.945 UTC |
| country                     | varchar      | 7,531,780 |            1.000000 |              4 |     False | 2024-03-26 08:02:27.945 UTC |
| type_id                     | varchar      | 7,531,780 |            1.000000 |              2 |     False | 2024-03-26 08:02:27.945 UTC |
| animal_id                   | varchar      | 7,531,780 |            1.000000 |        4204704 |     False | 2024-03-26 08:02:27.945 UTC |
| farm_id                     | varchar      | 7,531,780 |            1.000000 |          19362 |     False | 2024-03-26 08:02:27.945 UTC |
| record_date                 | timestamp(6) | 7,531,780 |            1.000000 |           1442 |     False | 2024-03-26 08:02:27.945 UTC |
| record_belongs_to_app       | varchar      | 7,531,780 |            1.000000 |              1 |     False | 2024-03-26 08:02:27.945 UTC |
| tag                         | varchar      | 7,531,780 |            0.999986 |        3821903 |     False | 2024-03-26 08:02:27.945 UTC |
| dob_date                    | timestamp(6) | 7,531,780 |            0.999986 |           7500 |     False | 2024-03-26 08:02:27.945 UTC |
| breed                       | varchar      | 7,531,780 |            0.999986 |            247 |     False | 2024-03-26 08:02:27.945 UTC |
| moved_in_date               | timestamp(6) | 7,531,780 |            0.916520 |           6882 |     False | 2024-03-26 08:02:27.945 UTC |
| off_herd_date               | timestamp(6) | 7,531,780 |            0.850538 |           1500 |     False | 2024-03-26 08:02:27.945 UTC |
| off_herd_reason             | varchar      | 7,531,780 |            0.540669 |             31 |     False | 2024-03-26 08:02:27.945 UTC |
| sale_price                  | double       | 7,531,780 |            0.057590 |          17290 |     False | 2024-03-26 08:02:27.945 UTC |
| purchase_price              | double       | 7,531,780 |            0.059971 |           2632 |     False | 2024-03-26 08:02:27.945 UTC |
| move_cert_type              | varchar      | 7,531,780 |            0.000000 |              0 |     False | 2024-03-26 08:02:27.945 UTC |
| operator_herd_number        | varchar      | 7,531,780 |            0.692084 |          69049 |     False | 2024-03-26 08:02:27.945 UTC |
| operator_name               | varchar      | 7,531,780 |            0.777512 |          90080 |     False | 2024-03-26 08:02:27.945 UTC |
| operator_type               | varchar      | 7,531,780 |            0.777512 |              3 |     False | 2024-03-26 08:02:27.945 UTC |
| move_apply_success_datetime | timestamp(6) | 7,531,780 |            0.000000 |              0 |     False | 2024-03-26 08:02:27.945 UTC |
| herd_number                 | varchar      | 7,531,780 |            1.000000 |          19362 |     False | 2024-03-26 08:02:27.945 UTC |
| city                        | varchar      | 7,531,780 |            1.000000 |           1419 |     False | 2024-03-26 08:02:27.945 UTC |
| county                      | varchar      | 7,531,780 |            0.878596 |            121 |     False | 2024-03-26 08:02:27.945 UTC |
{% enddocs %}
