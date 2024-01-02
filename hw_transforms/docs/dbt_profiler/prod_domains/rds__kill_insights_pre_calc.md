{% docs dbt_profiler_results__prod_domains_rds__kill_insights_pre_calc  %}
| column_name         | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 8,218,614 |            1.000000 |              4 |     False | 2024-01-02 09:52:47.729 UTC |
| animal_id           | varchar   | 8,218,614 |            1.000000 |        8218614 |      True | 2024-01-02 09:52:47.729 UTC |
| purchase_price      | double    | 8,218,614 |            0.015943 |           2259 |     False | 2024-01-02 09:52:47.729 UTC |
| sale_price          | double    | 8,218,614 |            0.043823 |          14609 |     False | 2024-01-02 09:52:47.729 UTC |
| days_in_herd        | bigint    | 8,218,614 |            1.000000 |           9941 |     False | 2024-01-02 09:52:47.729 UTC |
| months_in_herd      | bigint    | 8,218,614 |            1.000000 |            514 |     False | 2024-01-02 09:52:47.729 UTC |
| fat_str             | varchar   | 8,218,614 |            0.000956 |             65 |     False | 2024-01-02 09:52:47.729 UTC |
| conf_str            | varchar   | 8,218,614 |            0.000956 |             49 |     False | 2024-01-02 09:52:47.729 UTC |
| fat_conf_encoded    | integer   | 8,218,614 |            0.000846 |             87 |     False | 2024-01-02 09:52:47.729 UTC |
| live_weight         | double    | 8,218,614 |            0.000231 |            631 |     False | 2024-01-02 09:52:47.729 UTC |
| derived_live_wt     | double    | 8,218,614 |            0.111002 |           2651 |     False | 2024-01-02 09:52:47.729 UTC |
| dead_weight         | double    | 8,218,614 |            0.001017 |           2981 |     False | 2024-01-02 09:52:47.729 UTC |
| ppkg_live           | double    | 8,218,614 |            0.025900 |           2535 |     False | 2024-01-02 09:52:47.729 UTC |
| ppkg_dead           | double    | 8,218,614 |            0.000945 |            699 |     False | 2024-01-02 09:52:47.729 UTC |
| gross_margin        | double    | 8,218,614 |            0.024952 |          10656 |     False | 2024-01-02 09:52:47.729 UTC |
| gross_margin_dih    | double    | 8,218,614 |            0.024952 |           3358 |     False | 2024-01-02 09:52:47.729 UTC |
| adg_in_herd         | double    | 8,218,614 |            0.111089 |           4208 |     False | 2024-01-02 09:52:47.729 UTC |
| kill_out_percentage | double    | 8,218,614 |            0.000469 |           3598 |     False | 2024-01-02 09:52:47.729 UTC |
{% enddocs %}
