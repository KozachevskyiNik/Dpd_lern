{% docs dbt_profiler_results__prod_domains_rds__kill_insights_pre_calc  %}
| column_name         | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 8,537,135 |            1.000000 |              4 |     False | 2024-02-15 16:33:08.685 UTC |
| animal_id           | varchar   | 8,537,135 |            1.000000 |        8537135 |      True | 2024-02-15 16:33:08.685 UTC |
| purchase_price      | double    | 8,537,135 |            0.016178 |           2348 |     False | 2024-02-15 16:33:08.685 UTC |
| sale_price          | double    | 8,537,135 |            0.045483 |          17011 |     False | 2024-02-15 16:33:08.685 UTC |
| days_in_herd        | bigint    | 8,537,135 |            1.000000 |          10090 |     False | 2024-02-15 16:33:08.685 UTC |
| months_in_herd      | bigint    | 8,537,135 |            1.000000 |            522 |     False | 2024-02-15 16:33:08.685 UTC |
| fat_str             | varchar   | 8,537,135 |            0.001146 |             67 |     False | 2024-02-15 16:33:08.685 UTC |
| conf_str            | varchar   | 8,537,135 |            0.001146 |             49 |     False | 2024-02-15 16:33:08.685 UTC |
| fat_conf_encoded    | integer   | 8,537,135 |            0.001009 |             87 |     False | 2024-02-15 16:33:08.685 UTC |
| live_weight         | double    | 8,537,135 |            0.000405 |           1154 |     False | 2024-02-15 16:33:08.685 UTC |
| derived_live_wt     | double    | 8,537,135 |            0.113326 |           2740 |     False | 2024-02-15 16:33:08.685 UTC |
| dead_weight         | double    | 8,537,135 |            0.001220 |           3288 |     False | 2024-02-15 16:33:08.685 UTC |
| ppkg_live           | double    | 8,537,135 |            0.026254 |           2695 |     False | 2024-02-15 16:33:08.685 UTC |
| ppkg_dead           | double    | 8,537,135 |            0.001139 |            782 |     False | 2024-02-15 16:33:08.685 UTC |
| gross_margin        | double    | 8,537,135 |            0.025043 |          11824 |     False | 2024-02-15 16:33:08.685 UTC |
| gross_margin_dih    | double    | 8,537,135 |            0.025043 |           3465 |     False | 2024-02-15 16:33:08.685 UTC |
| adg_in_herd         | double    | 8,537,135 |            0.113525 |           4368 |     False | 2024-02-15 16:33:08.685 UTC |
| kill_out_percentage | double    | 8,537,135 |            0.000599 |           4510 |     False | 2024-02-15 16:33:08.685 UTC |
{% enddocs %}
