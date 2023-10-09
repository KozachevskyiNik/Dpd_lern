{% docs dbt_profiler_results__prod_domains_rds__kill_insights_pre_calc  %}
| column_name         | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 7,774,455 |            1.000000 |              4 |     False | 2023-10-07 12:06:05.625 UTC |
| animal_id           | varchar   | 7,774,455 |            1.000000 |      7,774,455 |      True | 2023-10-07 12:06:05.625 UTC |
| purchase_price      | double    | 7,774,455 |            0.015401 |          2,182 |     False | 2023-10-07 12:06:05.625 UTC |
| sale_price          | double    | 7,774,455 |            0.039951 |         12,426 |     False | 2023-10-07 12:06:05.625 UTC |
| days_in_herd        | bigint    | 7,774,455 |            1.000000 |          9,806 |     False | 2023-10-07 12:06:05.625 UTC |
| months_in_herd      | bigint    | 7,774,455 |            1.000000 |            511 |     False | 2023-10-07 12:06:05.625 UTC |
| fat_str             | varchar   | 7,774,455 |            0.000665 |             60 |     False | 2023-10-07 12:06:05.625 UTC |
| conf_str            | varchar   | 7,774,455 |            0.000665 |             45 |     False | 2023-10-07 12:06:05.625 UTC |
| fat_conf_encoded    | integer   | 7,774,455 |            0.000597 |             84 |     False | 2023-10-07 12:06:05.625 UTC |
| live_weight         | double    | 7,774,455 |            0.000031 |            134 |     False | 2023-10-07 12:06:05.625 UTC |
| derived_live_wt     | double    | 7,774,455 |            0.018374 |          1,843 |     False | 2023-10-07 12:06:05.625 UTC |
| dead_weight         | double    | 7,774,455 |            0.000716 |          2,373 |     False | 2023-10-07 12:06:05.625 UTC |
| ppkg_live           | double    | 7,774,455 |            0.004841 |          1,578 |     False | 2023-10-07 12:06:05.625 UTC |
| ppkg_dead           | double    | 7,774,455 |            0.000659 |            553 |     False | 2023-10-07 12:06:05.625 UTC |
| gross_margin        | double    | 7,774,455 |            0.024098 |          9,066 |     False | 2023-10-07 12:06:05.625 UTC |
| gross_margin_dih    | double    | 7,774,455 |            0.024098 |          3,268 |     False | 2023-10-07 12:06:05.625 UTC |
| adg_in_herd         | double    | 7,774,455 |            0.018398 |          2,014 |     False | 2023-10-07 12:06:05.625 UTC |
| kill_out_percentage | double    | 7,774,455 |            0.000129 |            988 |     False | 2023-10-07 12:06:05.625 UTC |
{% enddocs %}
