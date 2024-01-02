{% docs dbt_profiler_results__prod_domains_rds__all_weight_tasks  %}
| column_name              | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| country                  | varchar      | 2,821,158 |            1.000000 |              9 |     False | 2024-01-02 09:50:14.204 UTC |
| db_name                  | varchar      | 2,821,158 |            1.000000 |              4 |     False | 2024-01-02 09:50:14.204 UTC |
| task_id                  | varchar      | 2,821,158 |            1.000000 |        2789581 |     False | 2024-01-02 09:50:14.204 UTC |
| animal_id                | varchar      | 2,821,158 |            0.987208 |        1330798 |     False | 2024-01-02 09:50:14.204 UTC |
| task_type                | varchar      | 2,821,158 |            1.000000 |              1 |     False | 2024-01-02 09:50:14.204 UTC |
| farm_id                  | varchar      | 2,821,158 |            1.000000 |          10803 |     False | 2024-01-02 09:50:14.204 UTC |
| origin_app               | varchar      | 2,821,158 |            1.000000 |              2 |     False | 2024-01-02 09:50:14.204 UTC |
| record_date              | timestamp(6) | 2,821,158 |            1.000000 |           4761 |     False | 2024-01-02 09:50:14.204 UTC |
| weight_on_date           | double       | 2,821,158 |            1.000000 |           5255 |     False | 2024-01-02 09:50:14.204 UTC |
| record_adg               | double       | 2,821,158 |            0.834903 |           6717 |     False | 2024-01-02 09:50:14.204 UTC |
| species                  | varchar      | 2,821,158 |            0.991574 |              4 |     False | 2024-01-02 09:50:14.204 UTC |
| last_weight              | double       | 2,821,158 |            1.000000 |           3812 |     False | 2024-01-02 09:50:14.204 UTC |
| prev_weight              | double       | 2,821,158 |            0.528277 |           3940 |     False | 2024-01-02 09:50:14.204 UTC |
| weight_difference        | double       | 2,821,158 |            0.528277 |           7646 |     False | 2024-01-02 09:50:14.204 UTC |
| days_btwn_weighings      | bigint       | 2,821,158 |            0.528277 |           2976 |     False | 2024-01-02 09:50:14.204 UTC |
| days_lived_till_weighing | bigint       | 2,821,158 |            0.985703 |           8622 |     False | 2024-01-02 09:50:14.204 UTC |
| days_btwn_movement_off   | bigint       | 2,821,158 |            0.689976 |           5821 |     False | 2024-01-02 09:50:14.204 UTC |
| derived_live_wt          | double       | 2,821,158 |            1.000000 |           3839 |     False | 2024-01-02 09:50:14.204 UTC |
| inter_weighing_adg       | double       | 2,821,158 |            0.528277 |           7494 |     False | 2024-01-02 09:50:14.204 UTC |
| lifetime_adg_at_weighing | double       | 2,821,158 |            0.939337 |           2258 |     False | 2024-01-02 09:50:14.204 UTC |
| days_till_200            | bigint       | 2,821,158 |            0.943144 |           7202 |     False | 2024-01-02 09:50:14.204 UTC |
| days_till_40             | bigint       | 2,821,158 |            0.032346 |           1670 |     False | 2024-01-02 09:50:14.204 UTC |
{% enddocs %}
