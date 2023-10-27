{% docs dbt_profiler_results__prod_domains_rds__kill_insights_pre_calc  %}
| column_name         | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 7,872,422 |            1.000000 |              4 |     False | 2023-10-26 15:20:06.805 UTC |
| animal_id           | varchar   | 7,872,422 |            1.000000 |        7872422 |      True | 2023-10-26 15:20:06.805 UTC |
| purchase_price      | double    | 7,872,422 |            0.015625 |           2207 |     False | 2023-10-26 15:20:06.805 UTC |
| sale_price          | double    | 7,872,422 |            0.041325 |          13031 |     False | 2023-10-26 15:20:06.805 UTC |
| days_in_herd        | bigint    | 7,872,422 |            1.000000 |           9846 |     False | 2023-10-26 15:20:06.805 UTC |
| months_in_herd      | bigint    | 7,872,422 |            1.000000 |            512 |     False | 2023-10-26 15:20:06.805 UTC |
| fat_str             | varchar   | 7,872,422 |            0.000797 |             61 |     False | 2023-10-26 15:20:06.805 UTC |
| conf_str            | varchar   | 7,872,422 |            0.000797 |             47 |     False | 2023-10-26 15:20:06.805 UTC |
| fat_conf_encoded    | integer   | 7,872,422 |            0.000692 |             85 |     False | 2023-10-26 15:20:06.805 UTC |
| live_weight         | double    | 7,872,422 |            0.000075 |            182 |     False | 2023-10-26 15:20:06.805 UTC |
| derived_live_wt     | double    | 7,872,422 |            0.019246 |           1955 |     False | 2023-10-26 15:20:06.805 UTC |
| dead_weight         | double    | 7,872,422 |            0.000855 |           2659 |     False | 2023-10-26 15:20:06.805 UTC |
| ppkg_live           | double    | 7,872,422 |            0.005246 |           1683 |     False | 2023-10-26 15:20:06.805 UTC |
| ppkg_dead           | double    | 7,872,422 |            0.000775 |            610 |     False | 2023-10-26 15:20:06.805 UTC |
| gross_margin        | double    | 7,872,422 |            0.024452 |           9448 |     False | 2023-10-26 15:20:06.805 UTC |
| gross_margin_dih    | double    | 7,872,422 |            0.024452 |           3297 |     False | 2023-10-26 15:20:06.805 UTC |
| adg_in_herd         | double    | 7,872,422 |            0.019301 |           2228 |     False | 2023-10-26 15:20:06.805 UTC |
| kill_out_percentage | double    | 7,872,422 |            0.000154 |           1199 |     False | 2023-10-26 15:20:06.805 UTC |
{% enddocs %}
