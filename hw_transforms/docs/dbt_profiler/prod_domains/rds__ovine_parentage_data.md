{% docs dbt_profiler_results__prod_domains_rds__ovine_parentage_data  %}
| column_name                | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                    | varchar      |   573,805 |            1.000000 |              4 |     False | 2024-03-26 08:03:37.337 UTC |
| animal_id                  | varchar      |   573,805 |            1.000000 |         573805 |      True | 2024-03-26 08:03:37.337 UTC |
| child_lambing_difficulty   | varchar      |   573,805 |            0.001119 |              4 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_id                     | varchar      |   573,805 |            0.250158 |          70472 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_dob                    | timestamp(6) |   573,805 |            0.250158 |           2139 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_sex                    | varchar      |   573,805 |            0.250158 |              3 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_tag                    | varchar      |   573,805 |            0.250158 |          65534 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_breed                  | varchar      |   573,805 |            0.242279 |            275 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_age_in_months_at_birth | bigint       |   573,805 |            0.250158 |            316 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_age_in_days_at_birth   | bigint       |   573,805 |            0.250158 |           3781 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_age_in_years_at_birth  | bigint       |   573,805 |            0.250158 |             66 |     False | 2024-03-26 08:03:37.337 UTC |
| ewe_total_children         | bigint       |   573,805 |            0.250158 |             23 |     False | 2024-03-26 08:03:37.337 UTC |
| foster_ewe_id              | varchar      |   573,805 |            0.001403 |            750 |     False | 2024-03-26 08:03:37.337 UTC |
| foster_ewe_tag             | varchar      |   573,805 |            0.001403 |            741 |     False | 2024-03-26 08:03:37.337 UTC |
| foster_ewe_total_children  | bigint       |   573,805 |            0.250158 |              4 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_id                     | varchar      |   573,805 |            0.110597 |           2974 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_dob                    | timestamp(6) |   573,805 |            0.110597 |            647 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_sex                    | varchar      |   573,805 |            0.110597 |              2 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_tag                    | varchar      |   573,805 |            0.110597 |           2742 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_breed                  | varchar      |   573,805 |            0.102967 |            165 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_pedigree               | varchar      |   573,805 |            0.101589 |           1269 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_age_in_months_at_birth | bigint       |   573,805 |            0.110597 |            291 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_age_in_days_at_birth   | bigint       |   573,805 |            0.110597 |           3617 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_age_in_years_at_birth  | bigint       |   573,805 |            0.110597 |             59 |     False | 2024-03-26 08:03:37.337 UTC |
| ram_total_children         | bigint       |   573,805 |            0.110597 |            167 |     False | 2024-03-26 08:03:37.337 UTC |
{% enddocs %}
