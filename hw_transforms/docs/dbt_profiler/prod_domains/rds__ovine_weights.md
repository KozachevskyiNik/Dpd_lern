{% docs dbt_profiler_results__prod_domains_rds__ovine_weights  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar      |    99,633 |            1.000000 |              4 |     False | 2024-02-15 16:33:56.334 UTC |
| origin_app               | varchar      |    99,633 |            1.000000 |              2 |     False | 2024-02-15 16:33:56.334 UTC |
| species                  | varchar      |    99,633 |            1.000000 |              1 |     False | 2024-02-15 16:33:56.334 UTC |
| task_id                  | varchar      |    99,633 |            1.000000 |          99633 |      True | 2024-02-15 16:33:56.334 UTC |
| animal_id                | varchar      |    99,633 |            1.000000 |          53197 |     False | 2024-02-15 16:33:56.334 UTC |
| farm_id                  | varchar      |    99,633 |            1.000000 |            897 |     False | 2024-02-15 16:33:56.334 UTC |
| country                  | varchar      |    99,633 |            1.000000 |              9 |     False | 2024-02-15 16:33:56.334 UTC |
| task_type                | varchar      |    99,633 |            1.000000 |              1 |     False | 2024-02-15 16:33:56.334 UTC |
| group_created_date       | timestamp(6) |    99,633 |            0.000010 |              1 |     False | 2024-02-15 16:33:56.334 UTC |
| weigh_date               | timestamp(6) |    99,633 |            1.000000 |           1350 |     False | 2024-02-15 16:33:56.334 UTC |
| weight_on_date           | double       |    99,633 |            1.000000 |           2327 |     False | 2024-02-15 16:33:56.334 UTC |
| record_adg               | double       |    99,633 |            0.603766 |            684 |     False | 2024-02-15 16:33:56.334 UTC |
| last_weight              | double       |    99,633 |            1.000000 |           1801 |     False | 2024-02-15 16:33:56.334 UTC |
| prev_weight              | double       |    99,633 |            0.466281 |           1652 |     False | 2024-02-15 16:33:56.334 UTC |
| weight_difference        | double       |    99,633 |            0.466281 |           3039 |     False | 2024-02-15 16:33:56.334 UTC |
| days_btwn_weighings      | bigint       |    99,633 |            0.466281 |            747 |     False | 2024-02-15 16:33:56.334 UTC |
| days_lived_till_weighing | bigint       |    99,633 |            0.960736 |           1925 |     False | 2024-02-15 16:33:56.334 UTC |
| days_btwn_movement_off   | bigint       |    99,633 |            0.479941 |           1247 |     False | 2024-02-15 16:33:56.334 UTC |
| adg                      | double       |    99,633 |            0.466281 |            687 |     False | 2024-02-15 16:33:56.334 UTC |
| lifetime_adg             | double       |    99,633 |            0.559634 |            469 |     False | 2024-02-15 16:33:56.334 UTC |
| avg_offherd_age          | double       |    99,633 |            0.952646 |            579 |     False | 2024-02-15 16:33:56.334 UTC |
| avg_offherd_weight       | double       |    99,633 |            0.918932 |            378 |     False | 2024-02-15 16:33:56.334 UTC |
| group_name               | varchar      |    99,633 |            0.000010 |              1 |     False | 2024-02-15 16:33:56.334 UTC |
{% enddocs %}
