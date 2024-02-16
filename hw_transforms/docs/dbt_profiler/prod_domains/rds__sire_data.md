{% docs dbt_profiler_results__prod_domains_rds__sire_data  %}
| column_name         | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar      | 4,639,804 |            1.000000 |              4 |     False | 2024-02-15 16:35:26.687 UTC |
| child_id            | varchar      | 4,639,804 |            1.000000 |        4639804 |      True | 2024-02-15 16:35:26.687 UTC |
| child_dob           | timestamp(6) | 4,639,804 |            1.000000 |          13079 |     False | 2024-02-15 16:35:26.687 UTC |
| species             | varchar      | 4,639,804 |            1.000000 |              2 |     False | 2024-02-15 16:35:26.687 UTC |
| child_sex           | varchar      | 4,639,804 |            1.000000 |              4 |     False | 2024-02-15 16:35:26.687 UTC |
| child_tag           | varchar      | 4,639,804 |            1.000000 |        4489383 |     False | 2024-02-15 16:35:26.687 UTC |
| child_breed         | varchar      | 4,639,804 |            1.000000 |            236 |     False | 2024-02-15 16:35:26.687 UTC |
| child_reg_date      | timestamp(6) | 4,639,804 |            0.498381 |        2235451 |     False | 2024-02-15 16:35:26.687 UTC |
| sire_id             | varchar      | 4,639,804 |            1.000000 |         753563 |     False | 2024-02-15 16:35:26.687 UTC |
| sire_sex            | varchar      | 4,639,804 |            1.000000 |              4 |     False | 2024-02-15 16:35:26.687 UTC |
| sire_tag            | varchar      | 4,639,804 |            1.000000 |         143127 |     False | 2024-02-15 16:35:26.687 UTC |
| sire_breed          | varchar      | 4,639,804 |            1.000000 |            204 |     False | 2024-02-15 16:35:26.687 UTC |
| sire_pedigree       | varchar      | 4,639,804 |            0.768989 |          43993 |     False | 2024-02-15 16:35:26.687 UTC |
| stock_bull_flag     | bigint       | 4,639,804 |            1.000000 |              2 |     False | 2024-02-15 16:35:26.687 UTC |
| sire_total_children | bigint       | 4,639,804 |            1.000000 |            355 |     False | 2024-02-15 16:35:26.687 UTC |
| sire_dob            | timestamp(6) | 4,639,804 |            1.000000 |          10432 |     False | 2024-02-15 16:35:26.687 UTC |
{% enddocs %}
