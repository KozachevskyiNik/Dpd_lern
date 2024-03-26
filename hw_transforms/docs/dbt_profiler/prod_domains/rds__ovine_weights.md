{% docs dbt_profiler_results__prod_domains_rds__ovine_weights  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar      |   109,665 |            1.000000 |              4 |     False | 2024-03-26 08:04:10.512 UTC |
| origin_app               | varchar      |   109,665 |            1.000000 |              2 |     False | 2024-03-26 08:04:10.512 UTC |
| species                  | varchar      |   109,665 |            1.000000 |              1 |     False | 2024-03-26 08:04:10.512 UTC |
| task_id                  | varchar      |   109,665 |            1.000000 |         109665 |      True | 2024-03-26 08:04:10.512 UTC |
| animal_id                | varchar      |   109,665 |            1.000000 |          60144 |     False | 2024-03-26 08:04:10.512 UTC |
| farm_id                  | varchar      |   109,665 |            1.000000 |            950 |     False | 2024-03-26 08:04:10.512 UTC |
| country                  | varchar      |   109,665 |            1.000000 |              9 |     False | 2024-03-26 08:04:10.512 UTC |
| task_type                | varchar      |   109,665 |            1.000000 |              1 |     False | 2024-03-26 08:04:10.512 UTC |
| group_created_date       | timestamp(6) |   109,665 |            0.000009 |              1 |     False | 2024-03-26 08:04:10.512 UTC |
| weigh_date               | timestamp(6) |   109,665 |            1.000000 |           1398 |     False | 2024-03-26 08:04:10.512 UTC |
| weight_on_date           | double       |   109,665 |            1.000000 |           2447 |     False | 2024-03-26 08:04:10.512 UTC |
| record_adg               | double       |   109,665 |            0.583158 |            703 |     False | 2024-03-26 08:04:10.512 UTC |
| last_weight              | double       |   109,665 |            1.000000 |           1930 |     False | 2024-03-26 08:04:10.512 UTC |
| prev_weight              | double       |   109,665 |            0.451758 |           1715 |     False | 2024-03-26 08:04:10.512 UTC |
| weight_difference        | double       |   109,665 |            0.451758 |           3178 |     False | 2024-03-26 08:04:10.512 UTC |
| days_btwn_weighings      | bigint       |   109,665 |            0.451758 |            784 |     False | 2024-03-26 08:04:10.512 UTC |
| days_lived_till_weighing | bigint       |   109,665 |            0.960042 |           2043 |     False | 2024-03-26 08:04:10.512 UTC |
| days_btwn_movement_off   | bigint       |   109,665 |            0.475220 |           1318 |     False | 2024-03-26 08:04:10.512 UTC |
| adg                      | double       |   109,665 |            0.451758 |            693 |     False | 2024-03-26 08:04:10.512 UTC |
| lifetime_adg             | double       |   109,665 |            0.537902 |            516 |     False | 2024-03-26 08:04:10.512 UTC |
| avg_offherd_age          | double       |   109,665 |            0.951790 |            626 |     False | 2024-03-26 08:04:10.512 UTC |
| avg_offherd_weight       | double       |   109,665 |            0.919281 |            405 |     False | 2024-03-26 08:04:10.512 UTC |
| group_name               | varchar      |   109,665 |            0.000009 |              1 |     False | 2024-03-26 08:04:10.512 UTC |
{% enddocs %}
