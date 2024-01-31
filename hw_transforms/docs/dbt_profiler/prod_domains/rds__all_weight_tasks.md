{% docs dbt_profiler_results__prod_domains_rds__all_weight_tasks  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| country                  | varchar      | 3,271,499 |            1.000000 |              9 |     False | 2024-01-31 13:53:10.252 UTC |
| db_name                  | varchar      | 3,271,499 |            1.000000 |              4 |     False | 2024-01-31 13:53:10.252 UTC |
| task_id                  | varchar      | 3,271,499 |            1.000000 |        2874531 |     False | 2024-01-31 13:53:10.252 UTC |
| animal_id                | varchar      | 3,271,499 |            0.877280 |        1374030 |     False | 2024-01-31 13:53:10.252 UTC |
| task_type                | varchar      | 3,271,499 |            1.000000 |              1 |     False | 2024-01-31 13:53:10.252 UTC |
| farm_id                  | varchar      | 3,271,499 |            1.000000 |          11026 |     False | 2024-01-31 13:53:10.252 UTC |
| origin_app               | varchar      | 3,271,499 |            1.000000 |              2 |     False | 2024-01-31 13:53:10.252 UTC |
| record_date              | timestamp(6) | 3,271,499 |            1.000000 |           5056 |     False | 2024-01-31 13:53:10.252 UTC |
| weight_on_date           | double       | 3,271,499 |            1.000000 |           5487 |     False | 2024-01-31 13:53:10.252 UTC |
| record_adg               | double       | 3,271,499 |            0.845828 |           6837 |     False | 2024-01-31 13:53:10.252 UTC |
| species                  | varchar      | 3,271,499 |            0.985491 |              4 |     False | 2024-01-31 13:53:10.252 UTC |
| last_weight              | double       | 3,271,499 |            0.877280 |           4016 |     False | 2024-01-31 13:53:10.252 UTC |
| prev_weight              | double       | 3,271,499 |            0.457280 |           3990 |     False | 2024-01-31 13:53:10.252 UTC |
| weight_difference        | double       | 3,271,499 |            0.457280 |           7760 |     False | 2024-01-31 13:53:10.252 UTC |
| days_btwn_weighings      | bigint       | 3,271,499 |            0.457280 |           3000 |     False | 2024-01-31 13:53:10.252 UTC |
| days_lived_till_weighing | bigint       | 3,271,499 |            0.875978 |           8699 |     False | 2024-01-31 13:53:10.252 UTC |
| days_btwn_movement_off   | bigint       | 3,271,499 |            0.616436 |           5986 |     False | 2024-01-31 13:53:10.252 UTC |
| derived_live_wt          | double       | 3,271,499 |            0.877280 |           4048 |     False | 2024-01-31 13:53:10.252 UTC |
| inter_weighing_adg       | double       | 3,271,499 |            0.457280 |           7034 |     False | 2024-01-31 13:53:10.252 UTC |
| lifetime_adg_at_weighing | double       | 3,271,499 |            0.834542 |           2287 |     False | 2024-01-31 13:53:10.252 UTC |
| days_till_200            | bigint       | 3,271,499 |            0.830701 |           7234 |     False | 2024-01-31 13:53:10.252 UTC |
| days_till_40             | bigint       | 3,271,499 |            0.029226 |           1742 |     False | 2024-01-31 13:53:10.252 UTC |
{% enddocs %}
