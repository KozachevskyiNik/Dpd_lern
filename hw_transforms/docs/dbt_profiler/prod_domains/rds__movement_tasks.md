
{% docs dbt_profiler_results__prod_domains_rds__movement_tasks  %}
| column_name                 | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| task_id                     | varchar      | 6,892,016 |            1.000000 |        1147379 |     False | 2023-10-26 15:20:28.761 UTC |
| db_name                     | varchar      | 6,892,016 |            1.000000 |              2 |     False | 2023-10-26 15:20:28.761 UTC |
| country                     | varchar      | 6,892,016 |            1.000000 |              4 |     False | 2023-10-26 15:20:28.761 UTC |
| type_id                     | varchar      | 6,892,016 |            1.000000 |              2 |     False | 2023-10-26 15:20:28.761 UTC |
| animal_id                   | varchar      | 6,892,016 |            1.000000 |        3443906 |     False | 2023-10-26 15:20:28.761 UTC |
| farm_id                     | varchar      | 6,892,016 |            1.000000 |          17755 |     False | 2023-10-26 15:20:28.761 UTC |
| record_date                 | timestamp(6) | 6,892,016 |            1.000000 |           1289 |     False | 2023-10-26 15:20:28.761 UTC |
| record_belongs_to_app       | varchar      | 6,892,016 |            1.000000 |              1 |     False | 2023-10-26 15:20:28.761 UTC |
| tag                         | varchar      | 6,892,016 |            0.999937 |        3145298 |     False | 2023-10-26 15:20:28.761 UTC |
| dob_date                    | timestamp(6) | 6,892,016 |            0.999937 |           7305 |     False | 2023-10-26 15:20:28.761 UTC |
| breed                       | varchar      | 6,892,016 |            0.999937 |            236 |     False | 2023-10-26 15:20:28.761 UTC |
| moved_in_date               | timestamp(6) | 6,892,016 |            0.925539 |           6674 |     False | 2023-10-26 15:20:28.761 UTC |
| off_herd_date               | timestamp(6) | 6,892,016 |            0.818840 |           1332 |     False | 2023-10-26 15:20:28.761 UTC |
| off_herd_reason             | varchar      | 6,892,016 |            0.562337 |             30 |     False | 2023-10-26 15:20:28.761 UTC |
| sale_price                  | double       | 6,892,016 |            0.064893 |          10496 |     False | 2023-10-26 15:20:28.761 UTC |
| purchase_price              | double       | 6,892,016 |            0.134770 |           2166 |     False | 2023-10-26 15:20:28.761 UTC |
| move_cert_type              | varchar      | 6,892,016 |            0.000000 |              0 |     False | 2023-10-26 15:20:28.761 UTC |
| operator_herd_number        | varchar      | 6,892,016 |            0.627407 |          76984 |     False | 2023-10-26 15:20:28.761 UTC |
| operator_name               | varchar      | 6,892,016 |            0.823353 |          95376 |     False | 2023-10-26 15:20:28.761 UTC |
| operator_type               | varchar      | 6,892,016 |            0.823353 |              3 |     False | 2023-10-26 15:20:28.761 UTC |
| move_apply_success_datetime | timestamp(6) | 6,892,016 |            0.000000 |              0 |     False | 2023-10-26 15:20:28.761 UTC |
| herd_number                 | varchar      | 6,892,016 |            1.000000 |          17755 |     False | 2023-10-26 15:20:28.761 UTC |
| city                        | varchar      | 6,892,016 |            1.000000 |           1388 |     False | 2023-10-26 15:20:28.761 UTC |
| county                      | varchar      | 6,892,016 |            0.911326 |            119 |     False | 2023-10-26 15:20:28.761 UTC |
{% enddocs%}