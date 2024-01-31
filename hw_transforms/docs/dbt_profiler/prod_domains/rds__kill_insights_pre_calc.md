{% docs dbt_profiler_results__prod_domains_rds__kill_insights_pre_calc  %}
| column_name         | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 8,427,602 |            1.000000 |              4 |     False | 2024-01-31 13:56:40.257 UTC |
| animal_id           | varchar   | 8,427,602 |            1.000000 |        8427602 |      True | 2024-01-31 13:56:40.257 UTC |
| purchase_price      | double    | 8,427,602 |            0.016091 |           2314 |     False | 2024-01-31 13:56:40.257 UTC |
| sale_price          | double    | 8,427,602 |            0.044867 |          16293 |     False | 2024-01-31 13:56:40.257 UTC |
| days_in_herd        | bigint    | 8,427,602 |            1.000000 |          10070 |     False | 2024-01-31 13:56:40.257 UTC |
| months_in_herd      | bigint    | 8,427,602 |            1.000000 |            521 |     False | 2024-01-31 13:56:40.257 UTC |
| fat_str             | varchar   | 8,427,602 |            0.001083 |             67 |     False | 2024-01-31 13:56:40.257 UTC |
| conf_str            | varchar   | 8,427,602 |            0.001083 |             49 |     False | 2024-01-31 13:56:40.257 UTC |
| fat_conf_encoded    | integer   | 8,427,602 |            0.000949 |             87 |     False | 2024-01-31 13:56:40.257 UTC |
| live_weight         | double    | 8,427,602 |            0.000352 |           1013 |     False | 2024-01-31 13:56:40.257 UTC |
| derived_live_wt     | double    | 8,427,602 |            0.112822 |           2753 |     False | 2024-01-31 13:56:40.257 UTC |
| dead_weight         | double    | 8,427,602 |            0.001153 |           3205 |     False | 2024-01-31 13:56:40.257 UTC |
| ppkg_live           | double    | 8,427,602 |            0.026028 |           2649 |     False | 2024-01-31 13:56:40.257 UTC |
| ppkg_dead           | double    | 8,427,602 |            0.001076 |            746 |     False | 2024-01-31 13:56:40.257 UTC |
| gross_margin        | double    | 8,427,602 |            0.024918 |          11444 |     False | 2024-01-31 13:56:40.257 UTC |
| gross_margin_dih    | double    | 8,427,602 |            0.024918 |           3389 |     False | 2024-01-31 13:56:40.257 UTC |
| adg_in_herd         | double    | 8,427,602 |            0.112995 |           4377 |     False | 2024-01-31 13:56:40.257 UTC |
| kill_out_percentage | double    | 8,427,602 |            0.000559 |           4172 |     False | 2024-01-31 13:56:40.257 UTC |
{% enddocs %}
