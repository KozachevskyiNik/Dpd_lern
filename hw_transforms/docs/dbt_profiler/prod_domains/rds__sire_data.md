{% docs dbt_profiler_results__prod_domains_rds__sire_data  %}
| column_name         | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar      | 4,969,394 |            1.000000 |              4 |     False | 2024-03-26 08:07:08.112 UTC |
| child_id            | varchar      | 4,969,394 |            1.000000 |        4969394 |      True | 2024-03-26 08:07:08.112 UTC |
| child_dob           | timestamp(6) | 4,969,394 |            1.000000 |          13144 |     False | 2024-03-26 08:07:08.112 UTC |
| species             | varchar      | 4,969,394 |            1.000000 |              2 |     False | 2024-03-26 08:07:08.112 UTC |
| child_sex           | varchar      | 4,969,394 |            1.000000 |              4 |     False | 2024-03-26 08:07:08.112 UTC |
| child_tag           | varchar      | 4,969,394 |            1.000000 |        4806987 |     False | 2024-03-26 08:07:08.112 UTC |
| child_breed         | varchar      | 4,969,394 |            1.000000 |            241 |     False | 2024-03-26 08:07:08.112 UTC |
| child_reg_date      | timestamp(6) | 4,969,394 |            0.503358 |        2403946 |     False | 2024-03-26 08:07:08.112 UTC |
| sire_id             | varchar      | 4,969,394 |            1.000000 |         786371 |     False | 2024-03-26 08:07:08.112 UTC |
| sire_sex            | varchar      | 4,969,394 |            1.000000 |              4 |     False | 2024-03-26 08:07:08.112 UTC |
| sire_tag            | varchar      | 4,969,394 |            1.000000 |         148882 |     False | 2024-03-26 08:07:08.112 UTC |
| sire_breed          | varchar      | 4,969,394 |            1.000000 |            208 |     False | 2024-03-26 08:07:08.112 UTC |
| sire_pedigree       | varchar      | 4,969,394 |            0.773467 |          46623 |     False | 2024-03-26 08:07:08.112 UTC |
| stock_bull_flag     | bigint       | 4,969,394 |            1.000000 |              2 |     False | 2024-03-26 08:07:08.112 UTC |
| sire_total_children | bigint       | 4,969,394 |            1.000000 |            370 |     False | 2024-03-26 08:07:08.112 UTC |
| sire_dob            | timestamp(6) | 4,969,394 |            1.000000 |          10529 |     False | 2024-03-26 08:07:08.112 UTC |
{% enddocs %}
