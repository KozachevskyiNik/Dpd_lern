{% docs dbt_profiler_results__prod_domains_rds__all_weight_tasks  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| country                  | varchar      | 2,887,768 |            1.000000 |              9 |     False | 2024-02-15 16:30:27.192 UTC |
| db_name                  | varchar      | 2,887,768 |            1.000000 |              4 |     False | 2024-02-15 16:30:27.192 UTC |
| task_id                  | varchar      | 2,887,768 |            1.000000 |        2886868 |     False | 2024-02-15 16:30:27.192 UTC |
| animal_id                | varchar      | 2,887,768 |            0.999676 |        1387799 |     False | 2024-02-15 16:30:27.192 UTC |
| task_type                | varchar      | 2,887,768 |            1.000000 |              1 |     False | 2024-02-15 16:30:27.192 UTC |
| farm_id                  | varchar      | 2,887,768 |            1.000000 |          11046 |     False | 2024-02-15 16:30:27.192 UTC |
| origin_app               | varchar      | 2,887,768 |            1.000000 |              2 |     False | 2024-02-15 16:30:27.192 UTC |
| record_date              | timestamp(6) | 2,887,768 |            1.000000 |           4982 |     False | 2024-02-15 16:30:27.192 UTC |
| weight_on_date           | double       | 2,887,768 |            1.000000 |           5378 |     False | 2024-02-15 16:30:27.192 UTC |
| record_adg               | double       | 2,887,768 |            0.839347 |           6127 |     False | 2024-02-15 16:30:27.192 UTC |
| species                  | varchar      | 2,887,768 |            0.982127 |              4 |     False | 2024-02-15 16:30:27.192 UTC |
| last_weight              | double       | 2,887,768 |            0.999676 |           4015 |     False | 2024-02-15 16:30:27.192 UTC |
| prev_weight              | double       | 2,887,768 |            0.519097 |           3865 |     False | 2024-02-15 16:30:27.192 UTC |
| weight_difference        | double       | 2,887,768 |            0.519097 |           7097 |     False | 2024-02-15 16:30:27.192 UTC |
| days_btwn_weighings      | bigint       | 2,887,768 |            0.519097 |           2913 |     False | 2024-02-15 16:30:27.192 UTC |
| days_lived_till_weighing | bigint       | 2,887,768 |            0.997879 |           8516 |     False | 2024-02-15 16:30:27.192 UTC |
| days_btwn_movement_off   | bigint       | 2,887,768 |            0.707064 |           5871 |     False | 2024-02-15 16:30:27.192 UTC |
| derived_live_wt          | double       | 2,887,768 |            0.999676 |           4035 |     False | 2024-02-15 16:30:27.192 UTC |
| inter_weighing_adg       | double       | 2,887,768 |            0.519097 |           5795 |     False | 2024-02-15 16:30:27.192 UTC |
| lifetime_adg_at_weighing | double       | 2,887,768 |            0.950216 |           2075 |     False | 2024-02-15 16:30:27.192 UTC |
| bov_days_till_200        | bigint       | 2,887,768 |            0.945117 |           7094 |     False | 2024-02-15 16:30:27.192 UTC |
| ov_days_till_40          | bigint       | 2,887,768 |            0.033147 |           1744 |     False | 2024-02-15 16:30:27.192 UTC |
| ov_days_till_100         | bigint       | 2,887,768 |            0.033147 |           1685 |     False | 2024-02-15 16:30:27.192 UTC |
| ov_days_till_150         | bigint       | 2,887,768 |            0.033147 |           1642 |     False | 2024-02-15 16:30:27.192 UTC |
| ov_days_till_200         | bigint       | 2,887,768 |            0.033147 |           1602 |     False | 2024-02-15 16:30:27.192 UTC |
{% enddocs %}
