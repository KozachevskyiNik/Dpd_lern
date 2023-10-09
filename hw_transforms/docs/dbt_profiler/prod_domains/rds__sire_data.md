{% docs dbt_profiler_results__prod_domains_rds__sire_data  %}
| column_name         | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar      | 4,451,707 |            1.000000 |              3 |     False | 2023-10-07 12:07:25.323 UTC |
| child_id            | varchar      | 4,451,707 |            1.000000 |      4,451,707 |      True | 2023-10-07 12:07:25.323 UTC |
| child_dob           | timestamp(6) | 4,451,707 |            1.000000 |         13,291 |     False | 2023-10-07 12:07:25.323 UTC |
| species             | varchar      | 4,451,707 |            1.000000 |              2 |     False | 2023-10-07 12:07:25.323 UTC |
| child_sex           | varchar      | 4,451,707 |            1.000000 |              4 |     False | 2023-10-07 12:07:25.323 UTC |
| child_tag           | varchar      | 4,451,707 |            1.000000 |      4,319,634 |     False | 2023-10-07 12:07:25.323 UTC |
| child_breed         | varchar      | 4,451,707 |            1.000000 |            224 |     False | 2023-10-07 12:07:25.323 UTC |
| child_reg_date      | timestamp(6) | 4,451,707 |            0.505044 |      2,179,151 |     False | 2023-10-07 12:07:25.323 UTC |
| sire_id             | varchar      | 4,451,707 |            1.000000 |        712,995 |     False | 2023-10-07 12:07:25.323 UTC |
| sire_sex            | varchar      | 4,451,707 |            1.000000 |              4 |     False | 2023-10-07 12:07:25.323 UTC |
| sire_tag            | varchar      | 4,451,707 |            1.000000 |        151,192 |     False | 2023-10-07 12:07:25.323 UTC |
| sire_breed          | varchar      | 4,451,707 |            1.000000 |            193 |     False | 2023-10-07 12:07:25.323 UTC |
| sire_pedigree       | varchar      | 4,451,707 |            0.749999 |         42,016 |     False | 2023-10-07 12:07:25.323 UTC |
| stock_bull_flag     | bigint       | 4,451,707 |            1.000000 |              2 |     False | 2023-10-07 12:07:25.323 UTC |
| sire_total_children | bigint       | 4,451,707 |            1.000000 |            342 |     False | 2023-10-07 12:07:25.323 UTC |
| sire_dob            | timestamp(6) | 4,451,707 |            1.000000 |         10,394 |     False | 2023-10-07 12:07:25.323 UTC |
{% enddocs %}
