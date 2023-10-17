{% docs dbt_profiler_results__prod_domains_rds__weight_tasks  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| country                  | varchar      |   529,083 |            1.000000 |              8 |     False | 2023-10-17 14:49:25.886 UTC |
| db_name                  | varchar      |   529,083 |            1.000000 |              4 |     False | 2023-10-17 14:49:25.886 UTC |
| task_id                  | varchar      |   529,083 |            1.000000 |         529083 |      True | 2023-10-17 14:49:25.886 UTC |
| animal_id                | varchar      |   529,083 |            1.000000 |         242670 |     False | 2023-10-17 14:49:25.886 UTC |
| task_type                | varchar      |   529,083 |            1.000000 |              1 |     False | 2023-10-17 14:49:25.886 UTC |
| farm_id                  | varchar      |   529,083 |            1.000000 |           2125 |     False | 2023-10-17 14:49:25.886 UTC |
| record_date              | timestamp(6) |   529,083 |            1.000000 |           3381 |     False | 2023-10-17 14:49:25.886 UTC |
| weight_on_date           | double       |   529,083 |            1.000000 |           3212 |     False | 2023-10-17 14:49:25.886 UTC |
| lifetime_adg             | double       |   529,083 |            0.811096 |           2832 |     False | 2023-10-17 14:49:25.886 UTC |
| species                  | varchar      |   529,083 |            0.995951 |              2 |     False | 2023-10-17 14:49:25.886 UTC |
| live_weight              | double       |   529,083 |            0.000605 |             39 |     False | 2023-10-17 14:49:25.886 UTC |
| dead_weight              | double       |   529,083 |            0.005307 |            836 |     False | 2023-10-17 14:49:25.886 UTC |
| city                     | varchar      |   529,083 |            1.000000 |            412 |     False | 2023-10-17 14:49:25.886 UTC |
| herd_number              | varchar      |   529,083 |            1.000000 |           2124 |     False | 2023-10-17 14:49:25.886 UTC |
| farm_type                | varchar      |   529,083 |            1.000000 |              1 |     False | 2023-10-17 14:49:25.886 UTC |
| farm_option              | varchar      |   529,083 |            0.999354 |              1 |     False | 2023-10-17 14:49:25.886 UTC |
| farm_band                | varchar      |   529,083 |            1.000000 |              5 |     False | 2023-10-17 14:49:25.886 UTC |
| farm_app_type            | double       |   529,083 |            1.000000 |              1 |     False | 2023-10-17 14:49:25.886 UTC |
| user_id                  | double       |   529,083 |            1.000000 |           2021 |     False | 2023-10-17 14:49:25.886 UTC |
| last_weight              | double       |   529,083 |            1.000000 |           2646 |     False | 2023-10-17 14:49:25.886 UTC |
| weight_difference        | double       |   529,083 |            0.541339 |           4273 |     False | 2023-10-17 14:49:25.886 UTC |
| days_btwn_weighings      | bigint       |   529,083 |            0.541339 |           1794 |     False | 2023-10-17 14:49:25.886 UTC |
| days_lived_till_weighing | bigint       |   529,083 |            0.540403 |           5407 |     False | 2023-10-17 14:49:25.886 UTC |
| days_btwn_movement_off   | bigint       |   529,083 |            0.357494 |           2858 |     False | 2023-10-17 14:49:25.886 UTC |
| derived_live_wt          | double       |   529,083 |            1.000000 |           2771 |     False | 2023-10-17 14:49:25.886 UTC |
| inter_weighing_adg       | double       |   529,083 |            0.541339 |           2261 |     False | 2023-10-17 14:49:25.886 UTC |
| lifetime_adg_at_weighing | double       |   529,083 |            0.471610 |           1906 |     False | 2023-10-17 14:49:25.886 UTC |
| days_till_200            | bigint       |   529,083 |            0.540403 |           5060 |     False | 2023-10-17 14:49:25.886 UTC |
{% enddocs %}
