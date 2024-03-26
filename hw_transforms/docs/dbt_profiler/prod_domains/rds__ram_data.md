{% docs dbt_profiler_results__prod_domains_rds__ram_data  %}
| column_name                | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                    | varchar      |    63,461 |            1.000000 |              4 |     False | 2024-03-26 08:04:57.531 UTC |
| child_id                   | varchar      |    63,461 |            1.000000 |          63461 |      True | 2024-03-26 08:04:57.531 UTC |
| child_dob                  | timestamp(6) |    63,461 |            1.000000 |           2384 |     False | 2024-03-26 08:04:57.531 UTC |
| child_sex                  | varchar      |    63,461 |            1.000000 |              4 |     False | 2024-03-26 08:04:57.531 UTC |
| child_tag                  | varchar      |    63,461 |            1.000000 |          39926 |     False | 2024-03-26 08:04:57.531 UTC |
| child_breed                | varchar      |    63,461 |            0.936197 |            208 |     False | 2024-03-26 08:04:57.531 UTC |
| child_lambing_difficulty   | varchar      |    63,461 |            0.008667 |              4 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_id                     | varchar      |    63,461 |            1.000000 |           2974 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_sex                    | varchar      |    63,461 |            1.000000 |              2 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_tag                    | varchar      |    63,461 |            1.000000 |           2742 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_breed                  | varchar      |    63,461 |            0.931013 |            165 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_pedigree               | varchar      |    63,461 |            0.918548 |           1269 |     False | 2024-03-26 08:04:57.531 UTC |
| stock_bull_flag            | bigint       |    63,461 |            0.610895 |              2 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_age_in_months_at_birth | bigint       |    63,461 |            1.000000 |            291 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_age_in_days_at_birth   | bigint       |    63,461 |            1.000000 |           3617 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_age_in_years_at_birth  | bigint       |    63,461 |            1.000000 |             59 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_total_children         | bigint       |    63,461 |            1.000000 |            167 |     False | 2024-03-26 08:04:57.531 UTC |
| ram_dob                    | timestamp(6) |    63,461 |            1.000000 |            647 |     False | 2024-03-26 08:04:57.531 UTC |
{% enddocs %}
