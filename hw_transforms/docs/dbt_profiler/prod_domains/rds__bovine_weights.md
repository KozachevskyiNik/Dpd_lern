{% docs dbt_profiler_results__prod_domains_rds__bovine_weights  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar      | 3,048,070 |            1.000000 |              4 |     False | 2024-01-31 13:54:42.591 UTC |
| origin_app               | varchar      | 3,048,070 |            1.000000 |              1 |     False | 2024-01-31 13:54:42.591 UTC |
| species                  | varchar      | 3,048,070 |            1.000000 |              1 |     False | 2024-01-31 13:54:42.591 UTC |
| task_id                  | varchar      | 3,048,070 |            1.000000 |        2723678 |     False | 2024-01-31 13:54:42.591 UTC |
| animal_id                | varchar      | 3,048,070 |            0.998520 |        1275963 |     False | 2024-01-31 13:54:42.591 UTC |
| farm_id                  | varchar      | 3,048,070 |            1.000000 |          10139 |     False | 2024-01-31 13:54:42.591 UTC |
| country                  | varchar      | 3,048,070 |            1.000000 |              7 |     False | 2024-01-31 13:54:42.591 UTC |
| task_type                | varchar      | 3,048,070 |            1.000000 |              1 |     False | 2024-01-31 13:54:42.591 UTC |
| group_created_date       | timestamp(6) | 3,048,070 |            0.220023 |           2668 |     False | 2024-01-31 13:54:42.591 UTC |
| weigh_date               | timestamp(6) | 3,048,070 |            1.000000 |           4631 |     False | 2024-01-31 13:54:42.591 UTC |
| weight_on_date           | double       | 3,048,070 |            1.000000 |           3701 |     False | 2024-01-31 13:54:42.591 UTC |
| record_adg               | double       | 3,048,070 |            0.846546 |           6724 |     False | 2024-01-31 13:54:42.591 UTC |
| last_weight              | double       | 3,048,070 |            0.998520 |           2545 |     False | 2024-01-31 13:54:42.591 UTC |
| prev_weight              | double       | 3,048,070 |            0.548586 |           2792 |     False | 2024-01-31 13:54:42.591 UTC |
| weight_difference        | double       | 3,048,070 |            0.548586 |           5186 |     False | 2024-01-31 13:54:42.591 UTC |
| days_btwn_weighings      | bigint       | 3,048,070 |            0.548586 |           2942 |     False | 2024-01-31 13:54:42.591 UTC |
| days_lived_till_weighing | bigint       | 3,048,070 |            0.998019 |           7629 |     False | 2024-01-31 13:54:42.591 UTC |
| days_btwn_movement_off   | bigint       | 3,048,070 |            0.637769 |           4738 |     False | 2024-01-31 13:54:42.591 UTC |
| adg                      | double       | 3,048,070 |            0.548586 |           6936 |     False | 2024-01-31 13:54:42.591 UTC |
| lifetime_adg             | double       | 3,048,070 |            0.964133 |           2178 |     False | 2024-01-31 13:54:42.591 UTC |
| avg_offherd_age          | double       | 3,048,070 |            0.998871 |           9586 |     False | 2024-01-31 13:54:42.591 UTC |
| avg_offherd_weight       | double       | 3,048,070 |            0.991547 |           8106 |     False | 2024-01-31 13:54:42.591 UTC |
| group_name               | varchar      | 3,048,070 |            0.099387 |          12409 |     False | 2024-01-31 13:54:42.591 UTC |
{% enddocs %}
