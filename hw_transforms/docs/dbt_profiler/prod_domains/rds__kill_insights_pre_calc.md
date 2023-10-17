{% docs dbt_profiler_results__prod_domains_rds__kill_insights_pre_calc  %}
| column_name         | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 7,815,912 |            1.000000 |              4 |     False | 2023-10-17 14:47:43.143 UTC |
| animal_id           | varchar   | 7,815,912 |            1.000000 |        7815912 |      True | 2023-10-17 14:47:43.143 UTC |
| purchase_price      | double    | 7,815,912 |            0.015474 |           2187 |     False | 2023-10-17 14:47:43.143 UTC |
| sale_price          | double    | 7,815,912 |            0.040422 |          12692 |     False | 2023-10-17 14:47:43.143 UTC |
| days_in_herd        | bigint    | 7,815,912 |            1.000000 |           9816 |     False | 2023-10-17 14:47:43.143 UTC |
| months_in_herd      | bigint    | 7,815,912 |            1.000000 |            511 |     False | 2023-10-17 14:47:43.143 UTC |
| fat_str             | varchar   | 7,815,912 |            0.000667 |             62 |     False | 2023-10-17 14:47:43.143 UTC |
| conf_str            | varchar   | 7,815,912 |            0.000667 |             45 |     False | 2023-10-17 14:47:43.143 UTC |
| fat_conf_encoded    | integer   | 7,815,912 |            0.000604 |             84 |     False | 2023-10-17 14:47:43.143 UTC |
| live_weight         | double    | 7,815,912 |            0.000031 |            134 |     False | 2023-10-17 14:47:43.143 UTC |
| derived_live_wt     | double    | 7,815,912 |            0.018572 |           1859 |     False | 2023-10-17 14:47:43.143 UTC |
| dead_weight         | double    | 7,815,912 |            0.000719 |           2408 |     False | 2023-10-17 14:47:43.143 UTC |
| ppkg_live           | double    | 7,815,912 |            0.004909 |           1601 |     False | 2023-10-17 14:47:43.143 UTC |
| ppkg_dead           | double    | 7,815,912 |            0.000661 |            552 |     False | 2023-10-17 14:47:43.143 UTC |
| gross_margin        | double    | 7,815,912 |            0.024209 |           9200 |     False | 2023-10-17 14:47:43.143 UTC |
| gross_margin_dih    | double    | 7,815,912 |            0.024209 |           3277 |     False | 2023-10-17 14:47:43.143 UTC |
| adg_in_herd         | double    | 7,815,912 |            0.018596 |           2036 |     False | 2023-10-17 14:47:43.143 UTC |
| kill_out_percentage | double    | 7,815,912 |            0.000132 |           1017 |     False | 2023-10-17 14:47:43.143 UTC |
{% enddocs %}
