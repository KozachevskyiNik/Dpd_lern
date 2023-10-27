{% docs dbt_profiler_results__prod_domains_rds__weight_tasks  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| country                  | varchar      |   552,849 |            1.000000 |              9 |     False | 2023-10-26 15:21:42.815 UTC |
| db_name                  | varchar      |   552,849 |            1.000000 |              4 |     False | 2023-10-26 15:21:42.815 UTC |
| task_id                  | varchar      |   552,849 |            1.000000 |         552849 |      True | 2023-10-26 15:21:42.815 UTC |
| animal_id                | varchar      |   552,849 |            1.000000 |         253573 |     False | 2023-10-26 15:21:42.815 UTC |
| task_type                | varchar      |   552,849 |            1.000000 |              1 |     False | 2023-10-26 15:21:42.815 UTC |
| farm_id                  | varchar      |   552,849 |            1.000000 |           2203 |     False | 2023-10-26 15:21:42.815 UTC |
| record_date              | timestamp(6) |   552,849 |            1.000000 |           3449 |     False | 2023-10-26 15:21:42.815 UTC |
| weight_on_date           | double       |   552,849 |            1.000000 |           3373 |     False | 2023-10-26 15:21:42.815 UTC |
| lifetime_adg             | double       |   552,849 |            0.815297 |           3049 |     False | 2023-10-26 15:21:42.815 UTC |
| species                  | varchar      |   552,849 |            0.994369 |              2 |     False | 2023-10-26 15:21:42.815 UTC |
| live_weight              | double       |   552,849 |            0.001132 |             86 |     False | 2023-10-26 15:21:42.815 UTC |
| dead_weight              | double       |   552,849 |            0.005852 |            941 |     False | 2023-10-26 15:21:42.815 UTC |
| city                     | varchar      |   552,849 |            1.000000 |            419 |     False | 2023-10-26 15:21:42.815 UTC |
| herd_number              | varchar      |   552,849 |            1.000000 |           2202 |     False | 2023-10-26 15:21:42.815 UTC |
| farm_type                | varchar      |   552,849 |            1.000000 |              1 |     False | 2023-10-26 15:21:42.815 UTC |
| farm_option              | varchar      |   552,849 |            0.999385 |              1 |     False | 2023-10-26 15:21:42.815 UTC |
| farm_band                | varchar      |   552,849 |            1.000000 |              5 |     False | 2023-10-26 15:21:42.815 UTC |
| farm_app_type            | bigint       |   552,849 |            1.000000 |              1 |     False | 2023-10-26 15:21:42.815 UTC |
| user_id                  | bigint       |   552,849 |            1.000000 |           2095 |     False | 2023-10-26 15:21:42.815 UTC |
| last_weight              | double       |   552,849 |            1.000000 |           2743 |     False | 2023-10-26 15:21:42.815 UTC |
| weight_difference        | double       |   552,849 |            0.541334 |           4675 |     False | 2023-10-26 15:21:42.815 UTC |
| days_btwn_weighings      | bigint       |   552,849 |            0.541334 |           1831 |     False | 2023-10-26 15:21:42.815 UTC |
| days_lived_till_weighing | bigint       |   552,849 |            0.539921 |           5511 |     False | 2023-10-26 15:21:42.815 UTC |
| days_btwn_movement_off   | bigint       |   552,849 |            0.359044 |           2898 |     False | 2023-10-26 15:21:42.815 UTC |
| derived_live_wt          | double       |   552,849 |            1.000000 |           2915 |     False | 2023-10-26 15:21:42.815 UTC |
| inter_weighing_adg       | double       |   552,849 |            0.541334 |           2504 |     False | 2023-10-26 15:21:42.815 UTC |
| lifetime_adg_at_weighing | double       |   552,849 |            0.471769 |           1987 |     False | 2023-10-26 15:21:42.815 UTC |
| days_till_200            | bigint       |   552,849 |            0.539921 |           5155 |     False | 2023-10-26 15:21:42.815 UTC |
{% enddocs %}
