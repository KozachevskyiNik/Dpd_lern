{% docs dbt_profiler_results__prod_domains_rds__bovine_weights  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar      | 3,084,784 |            1.000000 |              4 |     False | 2024-03-26 07:58:58.312 UTC |
| origin_app               | varchar      | 3,084,784 |            1.000000 |              1 |     False | 2024-03-26 07:58:58.312 UTC |
| species                  | varchar      | 3,084,784 |            1.000000 |              1 |     False | 2024-03-26 07:58:58.312 UTC |
| task_id                  | varchar      | 3,084,784 |            1.000000 |        2801260 |     False | 2024-03-26 07:58:58.312 UTC |
| animal_id                | varchar      | 3,084,784 |            0.999988 |        1315131 |     False | 2024-03-26 07:58:58.312 UTC |
| farm_id                  | varchar      | 3,084,784 |            1.000000 |          10301 |     False | 2024-03-26 07:58:58.312 UTC |
| country                  | varchar      | 3,084,784 |            1.000000 |              7 |     False | 2024-03-26 07:58:58.312 UTC |
| task_type                | varchar      | 3,084,784 |            1.000000 |              1 |     False | 2024-03-26 07:58:58.312 UTC |
| group_created_date       | timestamp(6) | 3,084,784 |            0.201718 |           2526 |     False | 2024-03-26 07:58:58.312 UTC |
| weigh_date               | timestamp(6) | 3,084,784 |            1.000000 |           4596 |     False | 2024-03-26 07:58:58.312 UTC |
| weight_on_date           | double       | 3,084,784 |            1.000000 |           3579 |     False | 2024-03-26 07:58:58.312 UTC |
| record_adg               | double       | 3,084,784 |            0.849720 |           6098 |     False | 2024-03-26 07:58:58.312 UTC |
| last_weight              | double       | 3,084,784 |            0.999988 |           2586 |     False | 2024-03-26 07:58:58.312 UTC |
| prev_weight              | double       | 3,084,784 |            0.545661 |           2765 |     False | 2024-03-26 07:58:58.312 UTC |
| weight_difference        | double       | 3,084,784 |            0.545661 |           4644 |     False | 2024-03-26 07:58:58.312 UTC |
| days_btwn_weighings      | bigint       | 3,084,784 |            0.545661 |           2882 |     False | 2024-03-26 07:58:58.312 UTC |
| days_lived_till_weighing | bigint       | 3,084,784 |            0.999568 |           7477 |     False | 2024-03-26 07:58:58.312 UTC |
| days_btwn_movement_off   | bigint       | 3,084,784 |            0.661844 |           4692 |     False | 2024-03-26 07:58:58.312 UTC |
| adg                      | double       | 3,084,784 |            0.545661 |           5811 |     False | 2024-03-26 07:58:58.312 UTC |
| lifetime_adg             | double       | 3,084,784 |            0.963116 |           1993 |     False | 2024-03-26 07:58:58.312 UTC |
| avg_offherd_age          | double       | 3,084,784 |            0.998858 |           9666 |     False | 2024-03-26 07:58:58.312 UTC |
| avg_offherd_weight       | double       | 3,084,784 |            0.992976 |           8322 |     False | 2024-03-26 07:58:58.312 UTC |
| group_name               | varchar      | 3,084,784 |            0.085931 |          10914 |     False | 2024-03-26 07:58:58.312 UTC |
{% enddocs %}
