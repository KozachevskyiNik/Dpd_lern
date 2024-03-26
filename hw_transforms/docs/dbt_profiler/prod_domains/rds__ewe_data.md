{% docs dbt_profiler_results__prod_domains_rds__ewe_data  %}
| column_name                | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                    | varchar      |   143,542 |            1.000000 |              4 |     False | 2024-03-26 08:01:36.762 UTC |
| child_id                   | varchar      |   143,542 |            1.000000 |         143542 |      True | 2024-03-26 08:01:36.762 UTC |
| child_dob                  | timestamp(6) |   143,542 |            1.000000 |           2553 |     False | 2024-03-26 08:01:36.762 UTC |
| species                    | varchar      |   143,542 |            1.000000 |              1 |     False | 2024-03-26 08:01:36.762 UTC |
| child_sex                  | varchar      |   143,542 |            1.000000 |              4 |     False | 2024-03-26 08:01:36.762 UTC |
| child_tag                  | varchar      |   143,542 |            1.000000 |          73952 |     False | 2024-03-26 08:01:36.762 UTC |
| child_breed                | varchar      |   143,542 |            0.966323 |            253 |     False | 2024-03-26 08:01:36.762 UTC |
| child_lambing_difficulty   | varchar      |   143,542 |            0.004473 |              4 |     False | 2024-03-26 08:01:36.762 UTC |
| foster_ewe_id              | varchar      |   143,542 |            0.005608 |            750 |     False | 2024-03-26 08:01:36.762 UTC |
| foster_ewe_tag             | varchar      |   143,542 |            0.005608 |            741 |     False | 2024-03-26 08:01:36.762 UTC |
| foster_ewe_total_children  | bigint       |   143,542 |            1.000000 |              4 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_id                     | varchar      |   143,542 |            1.000000 |          70472 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_sex                    | varchar      |   143,542 |            1.000000 |              3 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_tag                    | varchar      |   143,542 |            1.000000 |          65534 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_breed                  | varchar      |   143,542 |            0.968504 |            275 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_age_in_months_at_birth | bigint       |   143,542 |            1.000000 |            316 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_age_in_days_at_birth   | bigint       |   143,542 |            1.000000 |           3781 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_age_in_years_at_birth  | bigint       |   143,542 |            1.000000 |             66 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_total_children         | bigint       |   143,542 |            1.000000 |             23 |     False | 2024-03-26 08:01:36.762 UTC |
| ewe_dob                    | timestamp(6) |   143,542 |            1.000000 |           2139 |     False | 2024-03-26 08:01:36.762 UTC |
{% enddocs %}
