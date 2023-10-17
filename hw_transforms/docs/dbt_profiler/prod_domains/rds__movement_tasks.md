{% docs dbt_profiler_results__prod_domains_rds__movement_tasks  %}
| column_name                 | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| task_id                     | varchar      | 7,698,487 |            1.000000 |         856932 |     False | 2023-10-17 14:48:07.570 UTC |
| db_name                     | varchar      | 7,698,487 |            1.000000 |              2 |     False | 2023-10-17 14:48:07.570 UTC |
| country                     | varchar      | 7,698,487 |            1.000000 |              4 |     False | 2023-10-17 14:48:07.570 UTC |
| type_id                     | varchar      | 7,698,487 |            1.000000 |              2 |     False | 2023-10-17 14:48:07.570 UTC |
| animal_id                   | varchar      | 7,698,487 |            1.000000 |        3383882 |     False | 2023-10-17 14:48:07.570 UTC |
| farm_id                     | varchar      | 7,698,487 |            1.000000 |          17616 |     False | 2023-10-17 14:48:07.570 UTC |
| record_date                 | timestamp(6) | 7,698,487 |            1.000000 |           1280 |     False | 2023-10-17 14:48:07.570 UTC |
| record_belongs_to_app       | varchar      | 7,698,487 |            1.000000 |              1 |     False | 2023-10-17 14:48:07.570 UTC |
| tag                         | varchar      | 7,698,487 |            0.993924 |        3078877 |     False | 2023-10-17 14:48:07.570 UTC |
| dob_date                    | timestamp(6) | 7,698,487 |            0.993924 |           7292 |     False | 2023-10-17 14:48:07.570 UTC |
| breed                       | varchar      | 7,698,487 |            0.993924 |            236 |     False | 2023-10-17 14:48:07.570 UTC |
| moved_in_date               | timestamp(6) | 7,698,487 |            0.925661 |           6663 |     False | 2023-10-17 14:48:07.570 UTC |
| off_herd_date               | timestamp(6) | 7,698,487 |            0.829324 |           1320 |     False | 2023-10-17 14:48:07.570 UTC |
| off_herd_reason             | varchar      | 7,698,487 |            0.413010 |             30 |     False | 2023-10-17 14:48:07.570 UTC |
| sale_price                  | double       | 7,698,487 |            0.051964 |          10203 |     False | 2023-10-17 14:48:07.570 UTC |
| purchase_price              | double       | 7,698,487 |            0.047176 |           2138 |     False | 2023-10-17 14:48:07.570 UTC |
| move_cert_type              | varchar      | 7,698,487 |            0.000000 |              0 |     False | 2023-10-17 14:48:07.570 UTC |
| operator_herd_number        | varchar      | 7,698,487 |            0.000242 |            163 |     False | 2023-10-17 14:48:07.570 UTC |
| operator_name               | varchar      | 7,698,487 |            0.000386 |            192 |     False | 2023-10-17 14:48:07.570 UTC |
| operator_type               | varchar      | 7,698,487 |            0.000386 |              1 |     False | 2023-10-17 14:48:07.570 UTC |
| move_apply_success_datetime | timestamp(6) | 7,698,487 |            0.000000 |              0 |     False | 2023-10-17 14:48:07.570 UTC |
| herd_number                 | varchar      | 7,698,487 |            0.999831 |          17577 |     False | 2023-10-17 14:48:07.570 UTC |
| city                        | varchar      | 7,698,487 |            0.999831 |           1385 |     False | 2023-10-17 14:48:07.570 UTC |
| county                      | varchar      | 7,698,487 |            0.903220 |            119 |     False | 2023-10-17 14:48:07.570 UTC |
{% enddocs %}
