{% docs dbt_profiler_results__prod_domains_rds__bovine_weights  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar      | 3,051,164 |            1.000000 |              4 |     False | 2024-01-02 09:51:16.469 UTC |
| origin_app               | varchar      | 3,051,164 |            1.000000 |              1 |     False | 2024-01-02 09:51:16.469 UTC |
| species                  | varchar      | 3,051,164 |            1.000000 |              1 |     False | 2024-01-02 09:51:16.469 UTC |
| task_id                  | varchar      | 3,051,164 |            1.000000 |        2666792 |     False | 2024-01-02 09:51:16.469 UTC |
| animal_id                | varchar      | 3,051,164 |            0.988172 |        1255368 |     False | 2024-01-02 09:51:16.469 UTC |
| farm_id                  | varchar      | 3,051,164 |            1.000000 |           9986 |     False | 2024-01-02 09:51:16.469 UTC |
| country                  | varchar      | 3,051,164 |            1.000000 |              7 |     False | 2024-01-02 09:51:16.469 UTC |
| task_type                | varchar      | 3,051,164 |            1.000000 |              1 |     False | 2024-01-02 09:51:16.469 UTC |
| group_created_date       | timestamp(6) | 3,051,164 |            0.227346 |           2643 |     False | 2024-01-02 09:51:16.469 UTC |
| weigh_date               | timestamp(6) | 3,051,164 |            1.000000 |           4593 |     False | 2024-01-02 09:51:16.469 UTC |
| weight_on_date           | double       | 3,051,164 |            1.000000 |           3513 |     False | 2024-01-02 09:51:16.469 UTC |
| record_adg               | double       | 3,051,164 |            0.844053 |           6612 |     False | 2024-01-02 09:51:16.469 UTC |
| last_weight              | double       | 3,051,164 |            1.000000 |           2408 |     False | 2024-01-02 09:51:16.469 UTC |
| prev_weight              | double       | 3,051,164 |            0.553248 |           2720 |     False | 2024-01-02 09:51:16.469 UTC |
| weight_difference        | double       | 3,051,164 |            0.553248 |           5079 |     False | 2024-01-02 09:51:16.469 UTC |
| days_btwn_weighings      | bigint       | 3,051,164 |            0.553248 |           2918 |     False | 2024-01-02 09:51:16.469 UTC |
| days_lived_till_weighing | bigint       | 3,051,164 |            0.987673 |           7589 |     False | 2024-01-02 09:51:16.469 UTC |
| days_btwn_movement_off   | bigint       | 3,051,164 |            0.621631 |           4700 |     False | 2024-01-02 09:51:16.469 UTC |
| adg                      | double       | 3,051,164 |            0.553248 |           7405 |     False | 2024-01-02 09:51:16.469 UTC |
| lifetime_adg             | double       | 3,051,164 |            0.954475 |           2154 |     False | 2024-01-02 09:51:16.469 UTC |
| avg_offherd_age          | double       | 3,051,164 |            0.998889 |           9904 |     False | 2024-01-02 09:51:16.469 UTC |
| avg_offherd_weight       | double       | 3,051,164 |            0.990743 |           7979 |     False | 2024-01-02 09:51:16.469 UTC |
| group_name               | varchar      | 3,051,164 |            0.098534 |          12329 |     False | 2024-01-02 09:51:16.469 UTC |
{% enddocs %}
