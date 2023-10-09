{% docs dbt_profiler_results__prod_domains_rds__weight_tasks  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| country                  | varchar      |   519,623 |            1.000000 |              8 |     False | 2023-10-07 12:07:44.720 UTC |
| db_name                  | varchar      |   519,623 |            1.000000 |              4 |     False | 2023-10-07 12:07:44.720 UTC |
| task_id                  | varchar      |   519,623 |            1.000000 |        519,623 |      True | 2023-10-07 12:07:44.720 UTC |
| animal_id                | varchar      |   519,623 |            1.000000 |        238,128 |     False | 2023-10-07 12:07:44.720 UTC |
| task_type                | varchar      |   519,623 |            1.000000 |              1 |     False | 2023-10-07 12:07:44.720 UTC |
| farm_id                  | varchar      |   519,623 |            1.000000 |          2,099 |     False | 2023-10-07 12:07:44.720 UTC |
| record_date              | timestamp(6) |   519,623 |            1.000000 |          3,369 |     False | 2023-10-07 12:07:44.720 UTC |
| weight_on_date           | double       |   519,623 |            1.000000 |          3,177 |     False | 2023-10-07 12:07:44.720 UTC |
| lifetime_adg             | double       |   519,623 |            0.808448 |          2,798 |     False | 2023-10-07 12:07:44.720 UTC |
| species                  | varchar      |   519,623 |            0.995924 |              2 |     False | 2023-10-07 12:07:44.720 UTC |
| live_weight              | double       |   519,623 |            0.000610 |             39 |     False | 2023-10-07 12:07:44.720 UTC |
| dead_weight              | double       |   519,623 |            0.005338 |            813 |     False | 2023-10-07 12:07:44.720 UTC |
| city                     | varchar      |   519,623 |            1.000000 |            408 |     False | 2023-10-07 12:07:44.720 UTC |
| herd_number              | varchar      |   519,623 |            1.000000 |          2,098 |     False | 2023-10-07 12:07:44.720 UTC |
| farm_type                | varchar      |   519,623 |            1.000000 |              1 |     False | 2023-10-07 12:07:44.720 UTC |
| farm_option              | varchar      |   519,623 |            0.999346 |              1 |     False | 2023-10-07 12:07:44.720 UTC |
| farm_band                | varchar      |   519,623 |            1.000000 |              5 |     False | 2023-10-07 12:07:44.720 UTC |
| farm_app_type            | double       |   519,623 |            1.000000 |              1 |     False | 2023-10-07 12:07:44.720 UTC |
| user_id                  | double       |   519,623 |            1.000000 |          1,995 |     False | 2023-10-07 12:07:44.720 UTC |
| last_weight              | double       |   519,623 |            1.000000 |          2,615 |     False | 2023-10-07 12:07:44.720 UTC |
| weight_difference        | double       |   519,623 |            0.541729 |          4,240 |     False | 2023-10-07 12:07:44.720 UTC |
| days_btwn_weighings      | bigint       |   519,623 |            0.541729 |          1,785 |     False | 2023-10-07 12:07:44.720 UTC |
| days_lived_till_weighing | bigint       |   519,623 |            0.540777 |          5,388 |     False | 2023-10-07 12:07:44.720 UTC |
| days_btwn_movement_off   | bigint       |   519,623 |            0.359284 |          2,839 |     False | 2023-10-07 12:07:44.720 UTC |
| derived_live_wt          | double       |   519,623 |            1.000000 |          2,734 |     False | 2023-10-07 12:07:44.720 UTC |
| inter_weighing_adg       | double       |   519,623 |            0.541729 |          2,248 |     False | 2023-10-07 12:07:44.720 UTC |
| lifetime_adg_at_weighing | double       |   519,623 |            0.473416 |          1,904 |     False | 2023-10-07 12:07:44.720 UTC |
| days_till_200            | bigint       |   519,623 |            0.540777 |          5,042 |     False | 2023-10-07 12:07:44.720 UTC |
{% enddocs %}
