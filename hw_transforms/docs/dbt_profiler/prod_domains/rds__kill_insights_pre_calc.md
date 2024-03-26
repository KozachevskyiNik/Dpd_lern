{% docs dbt_profiler_results__prod_domains_rds__kill_insights_pre_calc  %}
| column_name         | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 8,923,321 |            1.000000 |              4 |     False | 2024-03-26 08:01:58.289 UTC |
| animal_id           | varchar   | 8,923,321 |            1.000000 |        8923321 |      True | 2024-03-26 08:01:58.289 UTC |
| purchase_price      | double    | 8,923,321 |            0.016849 |           2535 |     False | 2024-03-26 08:01:58.289 UTC |
| sale_price          | double    | 8,923,321 |            0.050250 |          26843 |     False | 2024-03-26 08:01:58.289 UTC |
| days_in_herd        | bigint    | 8,923,321 |            1.000000 |          10316 |     False | 2024-03-26 08:01:58.289 UTC |
| months_in_herd      | bigint    | 8,923,321 |            1.000000 |            542 |     False | 2024-03-26 08:01:58.289 UTC |
| fat_str             | varchar   | 8,923,321 |            0.001963 |             69 |     False | 2024-03-26 08:01:58.289 UTC |
| conf_str            | varchar   | 8,923,321 |            0.001963 |             51 |     False | 2024-03-26 08:01:58.289 UTC |
| fat_conf_encoded    | integer   | 8,923,321 |            0.001574 |             87 |     False | 2024-03-26 08:01:58.289 UTC |
| live_weight         | double    | 8,923,321 |            0.000613 |           1459 |     False | 2024-03-26 08:01:58.289 UTC |
| derived_live_wt     | double    | 8,923,321 |            0.113734 |           2917 |     False | 2024-03-26 08:01:58.289 UTC |
| dead_weight         | double    | 8,923,321 |            0.002064 |           3729 |     False | 2024-03-26 08:01:58.289 UTC |
| ppkg_live           | double    | 8,923,321 |            0.026722 |           2781 |     False | 2024-03-26 08:01:58.289 UTC |
| ppkg_dead           | double    | 8,923,321 |            0.001387 |            851 |     False | 2024-03-26 08:01:58.289 UTC |
| gross_margin        | double    | 8,923,321 |            0.028136 |          21614 |     False | 2024-03-26 08:01:58.289 UTC |
| gross_margin_dih    | double    | 8,923,321 |            0.028136 |           3661 |     False | 2024-03-26 08:01:58.289 UTC |
| adg_in_herd         | double    | 8,923,321 |            0.114038 |           4502 |     False | 2024-03-26 08:01:58.289 UTC |
| kill_out_percentage | double    | 8,923,321 |            0.000824 |           6347 |     False | 2024-03-26 08:01:58.289 UTC |
{% enddocs %}
