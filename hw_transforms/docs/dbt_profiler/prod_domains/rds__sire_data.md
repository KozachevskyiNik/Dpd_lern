{% docs dbt_profiler_results__prod_domains_rds__sire_data  %}
| column_name         | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar      | 4,528,783 |            1.000000 |              4 |     False | 2024-01-31 13:58:55.984 UTC |
| child_id            | varchar      | 4,528,783 |            1.000000 |        4528783 |      True | 2024-01-31 13:58:55.984 UTC |
| child_dob           | timestamp(6) | 4,528,783 |            1.000000 |          13062 |     False | 2024-01-31 13:58:55.984 UTC |
| species             | varchar      | 4,528,783 |            1.000000 |              2 |     False | 2024-01-31 13:58:55.984 UTC |
| child_sex           | varchar      | 4,528,783 |            1.000000 |              4 |     False | 2024-01-31 13:58:55.984 UTC |
| child_tag           | varchar      | 4,528,783 |            1.000000 |        4381146 |     False | 2024-01-31 13:58:55.984 UTC |
| child_breed         | varchar      | 4,528,783 |            1.000000 |            234 |     False | 2024-01-31 13:58:55.984 UTC |
| child_reg_date      | timestamp(6) | 4,528,783 |            0.494148 |        2169058 |     False | 2024-01-31 13:58:55.984 UTC |
| sire_id             | varchar      | 4,528,783 |            1.000000 |         736649 |     False | 2024-01-31 13:58:55.984 UTC |
| sire_sex            | varchar      | 4,528,783 |            1.000000 |              4 |     False | 2024-01-31 13:58:55.984 UTC |
| sire_tag            | varchar      | 4,528,783 |            1.000000 |         140692 |     False | 2024-01-31 13:58:55.984 UTC |
| sire_breed          | varchar      | 4,528,783 |            1.000000 |            201 |     False | 2024-01-31 13:58:55.984 UTC |
| sire_pedigree       | varchar      | 4,528,783 |            0.768572 |          43219 |     False | 2024-01-31 13:58:55.984 UTC |
| stock_bull_flag     | bigint       | 4,528,783 |            1.000000 |              2 |     False | 2024-01-31 13:58:55.984 UTC |
| sire_total_children | bigint       | 4,528,783 |            1.000000 |            351 |     False | 2024-01-31 13:58:55.984 UTC |
| sire_dob            | timestamp(6) | 4,528,783 |            1.000000 |          10405 |     False | 2024-01-31 13:58:55.984 UTC |
{% enddocs %}
