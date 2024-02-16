{% docs dbt_profiler_results__prod_domains_rds__bovine_weights  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar      | 3,021,588 |            1.000000 |              4 |     False | 2024-02-15 16:31:39.144 UTC |
| origin_app               | varchar      | 3,021,588 |            1.000000 |              1 |     False | 2024-02-15 16:31:39.144 UTC |
| species                  | varchar      | 3,021,588 |            1.000000 |              1 |     False | 2024-02-15 16:31:39.144 UTC |
| task_id                  | varchar      | 3,021,588 |            1.000000 |        2730579 |     False | 2024-02-15 16:31:39.144 UTC |
| animal_id                | varchar      | 3,021,588 |            0.999988 |        1284831 |     False | 2024-02-15 16:31:39.144 UTC |
| farm_id                  | varchar      | 3,021,588 |            1.000000 |          10151 |     False | 2024-02-15 16:31:39.144 UTC |
| country                  | varchar      | 3,021,588 |            1.000000 |              7 |     False | 2024-02-15 16:31:39.144 UTC |
| task_type                | varchar      | 3,021,588 |            1.000000 |              1 |     False | 2024-02-15 16:31:39.144 UTC |
| group_created_date       | timestamp(6) | 3,021,588 |            0.209403 |           2496 |     False | 2024-02-15 16:31:39.144 UTC |
| weigh_date               | timestamp(6) | 3,021,588 |            1.000000 |           4556 |     False | 2024-02-15 16:31:39.144 UTC |
| weight_on_date           | double       | 3,021,588 |            1.000000 |           3453 |     False | 2024-02-15 16:31:39.144 UTC |
| record_adg               | double       | 3,021,588 |            0.848549 |           6017 |     False | 2024-02-15 16:31:39.144 UTC |
| last_weight              | double       | 3,021,588 |            0.999988 |           2432 |     False | 2024-02-15 16:31:39.144 UTC |
| prev_weight              | double       | 3,021,588 |            0.546257 |           2681 |     False | 2024-02-15 16:31:39.144 UTC |
| weight_difference        | double       | 3,021,588 |            0.546257 |           4536 |     False | 2024-02-15 16:31:39.144 UTC |
| days_btwn_weighings      | bigint       | 3,021,588 |            0.546257 |           2855 |     False | 2024-02-15 16:31:39.144 UTC |
| days_lived_till_weighing | bigint       | 3,021,588 |            0.999569 |           7463 |     False | 2024-02-15 16:31:39.144 UTC |
| days_btwn_movement_off   | bigint       | 3,021,588 |            0.651376 |           4638 |     False | 2024-02-15 16:31:39.144 UTC |
| adg                      | double       | 3,021,588 |            0.546257 |           5718 |     False | 2024-02-15 16:31:39.144 UTC |
| lifetime_adg             | double       | 3,021,588 |            0.964794 |           1967 |     False | 2024-02-15 16:31:39.144 UTC |
| avg_offherd_age          | double       | 3,021,588 |            0.998800 |           9550 |     False | 2024-02-15 16:31:39.144 UTC |
| avg_offherd_weight       | double       | 3,021,588 |            0.992412 |           8212 |     False | 2024-02-15 16:31:39.144 UTC |
| group_name               | varchar      | 3,021,588 |            0.089461 |          11079 |     False | 2024-02-15 16:31:39.144 UTC |
{% enddocs %}
