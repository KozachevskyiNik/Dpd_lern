{% docs dbt_profiler_results__prod_domains_rds__all_weight_tasks  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| country                  | varchar      | 2,691,200 |            1.000000 |              9 |     False | 2023-11-17 15:27:08.785 UTC |
| db_name                  | varchar      | 2,691,200 |            1.000000 |              4 |     False | 2023-11-17 15:27:08.785 UTC |
| task_id                  | varchar      | 2,691,200 |            1.000000 |        2691200 |      True | 2023-11-17 15:27:08.785 UTC |
| animal_id                | varchar      | 2,691,200 |            1.000000 |        1289841 |     False | 2023-11-17 15:27:08.785 UTC |
| task_type                | varchar      | 2,691,200 |            1.000000 |              1 |     False | 2023-11-17 15:27:08.785 UTC |
| farm_id                  | varchar      | 2,691,200 |            1.000000 |          10519 |     False | 2023-11-17 15:27:08.785 UTC |
| origin_app               | varchar      | 2,691,200 |            1.000000 |              2 |     False | 2023-11-17 15:27:08.785 UTC |
| record_date              | timestamp(6) | 2,691,200 |            1.000000 |           4664 |     False | 2023-11-17 15:27:08.785 UTC |
| weight_on_date           | double       | 2,691,200 |            1.000000 |           5089 |     False | 2023-11-17 15:27:08.785 UTC |
| record_adg               | double       | 2,691,200 |            0.829026 |           6469 |     False | 2023-11-17 15:27:08.785 UTC |
| species                  | varchar      | 2,691,200 |            0.994488 |              4 |     False | 2023-11-17 15:27:08.785 UTC |
| last_weight              | double       | 2,691,200 |            1.000000 |           3724 |     False | 2023-11-17 15:27:08.785 UTC |
| prev_weight              | double       | 2,691,200 |            0.520719 |           3741 |     False | 2023-11-17 15:27:08.785 UTC |
| weight_difference        | double       | 2,691,200 |            0.520719 |           7320 |     False | 2023-11-17 15:27:08.785 UTC |
| days_btwn_weighings      | bigint       | 2,691,200 |            0.520719 |           2921 |     False | 2023-11-17 15:27:08.785 UTC |
| days_lived_till_weighing | bigint       | 2,691,200 |            0.998435 |           8396 |     False | 2023-11-17 15:27:08.785 UTC |
| days_btwn_movement_off   | bigint       | 2,691,200 |            0.696361 |           5497 |     False | 2023-11-17 15:27:08.785 UTC |
| derived_live_wt          | double       | 2,691,200 |            1.000000 |           3742 |     False | 2023-11-17 15:27:08.785 UTC |
| inter_weighing_adg       | double       | 2,691,200 |            0.520719 |           6748 |     False | 2023-11-17 15:27:08.785 UTC |
| lifetime_adg_at_weighing | double       | 2,691,200 |            0.951636 |           2218 |     False | 2023-11-17 15:27:08.785 UTC |
| days_till_200            | bigint       | 2,691,200 |            0.959616 |           7194 |     False | 2023-11-17 15:27:08.785 UTC |
| days_till_40             | bigint       | 2,691,200 |            0.031433 |           1590 |     False | 2023-11-17 15:27:08.785 UTC |
{% enddocs %}
