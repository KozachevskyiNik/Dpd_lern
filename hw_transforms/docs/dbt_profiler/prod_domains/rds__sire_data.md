{% docs dbt_profiler_results__prod_domains_rds__sire_data  %}
| column_name         | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar      | 4,473,026 |            1.000000 |              3 |     False | 2023-10-17 14:49:07.681 UTC |
| child_id            | varchar      | 4,473,026 |            1.000000 |        4473026 |      True | 2023-10-17 14:49:07.681 UTC |
| child_dob           | timestamp(6) | 4,473,026 |            1.000000 |          13305 |     False | 2023-10-17 14:49:07.681 UTC |
| species             | varchar      | 4,473,026 |            1.000000 |              2 |     False | 2023-10-17 14:49:07.681 UTC |
| child_sex           | varchar      | 4,473,026 |            1.000000 |              4 |     False | 2023-10-17 14:49:07.681 UTC |
| child_tag           | varchar      | 4,473,026 |            1.000000 |        4339478 |     False | 2023-10-17 14:49:07.681 UTC |
| child_breed         | varchar      | 4,473,026 |            1.000000 |            225 |     False | 2023-10-17 14:49:07.681 UTC |
| child_reg_date      | timestamp(6) | 4,473,026 |            0.503430 |        2182604 |     False | 2023-10-17 14:49:07.681 UTC |
| sire_id             | varchar      | 4,473,026 |            1.000000 |         717048 |     False | 2023-10-17 14:49:07.681 UTC |
| sire_sex            | varchar      | 4,473,026 |            1.000000 |              4 |     False | 2023-10-17 14:49:07.681 UTC |
| sire_tag            | varchar      | 4,473,026 |            1.000000 |         151999 |     False | 2023-10-17 14:49:07.681 UTC |
| sire_breed          | varchar      | 4,473,026 |            1.000000 |            193 |     False | 2023-10-17 14:49:07.681 UTC |
| sire_pedigree       | varchar      | 4,473,026 |            0.748868 |          42131 |     False | 2023-10-17 14:49:07.681 UTC |
| stock_bull_flag     | bigint       | 4,473,026 |            1.000000 |              2 |     False | 2023-10-17 14:49:07.681 UTC |
| sire_total_children | bigint       | 4,473,026 |            1.000000 |            343 |     False | 2023-10-17 14:49:07.681 UTC |
| sire_dob            | timestamp(6) | 4,473,026 |            1.000000 |          10399 |     False | 2023-10-17 14:49:07.681 UTC |
{% enddocs %}
