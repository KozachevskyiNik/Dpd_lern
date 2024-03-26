{% docs dbt_profiler_results__prod_domains_rds__all_weight_tasks  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| country                  | varchar      | 2,988,158 |            1.000000 |              9 |     False | 2024-03-26 07:57:50.918 UTC |
| db_name                  | varchar      | 2,988,158 |            1.000000 |              4 |     False | 2024-03-26 07:57:50.918 UTC |
| task_id                  | varchar      | 2,988,158 |            1.000000 |        2982938 |     False | 2024-03-26 07:57:50.918 UTC |
| animal_id                | varchar      | 2,988,158 |            0.998241 |        1439038 |     False | 2024-03-26 07:57:50.918 UTC |
| task_type                | varchar      | 2,988,158 |            1.000000 |              1 |     False | 2024-03-26 07:57:50.918 UTC |
| farm_id                  | varchar      | 2,988,158 |            1.000000 |          11240 |     False | 2024-03-26 07:57:50.918 UTC |
| origin_app               | varchar      | 2,988,158 |            1.000000 |              2 |     False | 2024-03-26 07:57:50.918 UTC |
| record_date              | timestamp(6) | 2,988,158 |            1.000000 |           5053 |     False | 2024-03-26 07:57:50.918 UTC |
| weight_on_date           | double       | 2,988,158 |            1.000000 |           5591 |     False | 2024-03-26 07:57:50.918 UTC |
| record_adg               | double       | 2,988,158 |            0.838807 |           6210 |     False | 2024-03-26 07:57:50.918 UTC |
| species                  | varchar      | 2,988,158 |            0.977588 |              4 |     False | 2024-03-26 07:57:50.918 UTC |
| last_weight              | double       | 2,988,158 |            0.998241 |           4268 |     False | 2024-03-26 07:57:50.918 UTC |
| prev_weight              | double       | 2,988,158 |            0.516661 |           4002 |     False | 2024-03-26 07:57:50.918 UTC |
| weight_difference        | double       | 2,988,158 |            0.516661 |           7314 |     False | 2024-03-26 07:57:50.918 UTC |
| days_btwn_weighings      | bigint       | 2,988,158 |            0.516661 |           2944 |     False | 2024-03-26 07:57:50.918 UTC |
| days_lived_till_weighing | bigint       | 2,988,158 |            0.996335 |           8544 |     False | 2024-03-26 07:57:50.918 UTC |
| days_btwn_movement_off   | bigint       | 2,988,158 |            0.714722 |           5947 |     False | 2024-03-26 07:57:50.918 UTC |
| derived_live_wt          | double       | 2,988,158 |            0.998241 |           4284 |     False | 2024-03-26 07:57:50.918 UTC |
| inter_weighing_adg       | double       | 2,988,158 |            0.516661 |           5893 |     False | 2024-03-26 07:57:50.918 UTC |
| lifetime_adg_at_weighing | double       | 2,988,158 |            0.945466 |           2121 |     False | 2024-03-26 07:57:50.918 UTC |
| bov_days_till_200        | bigint       | 2,988,158 |            0.937008 |           7105 |     False | 2024-03-26 07:57:50.918 UTC |
| ov_days_till_40          | bigint       | 2,988,158 |            0.035233 |           1858 |     False | 2024-03-26 07:57:50.918 UTC |
| ov_days_till_100         | bigint       | 2,988,158 |            0.035233 |           1800 |     False | 2024-03-26 07:57:50.918 UTC |
| ov_days_till_150         | bigint       | 2,988,158 |            0.035233 |           1754 |     False | 2024-03-26 07:57:50.918 UTC |
| ov_days_till_200         | bigint       | 2,988,158 |            0.035233 |           1713 |     False | 2024-03-26 07:57:50.918 UTC |
{% enddocs %}
