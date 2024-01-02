{% docs dbt_profiler_results__prod_domains_rds__sire_data  %}
| column_name         | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar      | 4,403,233 |            1.000000 |              4 |     False | 2024-01-02 09:54:07.059 UTC |
| child_id            | varchar      | 4,403,233 |            1.000000 |        4403233 |      True | 2024-01-02 09:54:07.059 UTC |
| child_dob           | timestamp(6) | 4,403,233 |            1.000000 |          12995 |     False | 2024-01-02 09:54:07.059 UTC |
| species             | varchar      | 4,403,233 |            1.000000 |              2 |     False | 2024-01-02 09:54:07.059 UTC |
| child_sex           | varchar      | 4,403,233 |            1.000000 |              4 |     False | 2024-01-02 09:54:07.059 UTC |
| child_tag           | varchar      | 4,403,233 |            1.000000 |        4262531 |     False | 2024-01-02 09:54:07.059 UTC |
| child_breed         | varchar      | 4,403,233 |            1.000000 |            233 |     False | 2024-01-02 09:54:07.059 UTC |
| child_reg_date      | timestamp(6) | 4,403,233 |            0.500671 |        2137492 |     False | 2024-01-02 09:54:07.059 UTC |
| sire_id             | varchar      | 4,403,233 |            1.000000 |         714306 |     False | 2024-01-02 09:54:07.059 UTC |
| sire_sex            | varchar      | 4,403,233 |            1.000000 |              4 |     False | 2024-01-02 09:54:07.059 UTC |
| sire_tag            | varchar      | 4,403,233 |            1.000000 |         136848 |     False | 2024-01-02 09:54:07.059 UTC |
| sire_breed          | varchar      | 4,403,233 |            1.000000 |            200 |     False | 2024-01-02 09:54:07.059 UTC |
| sire_pedigree       | varchar      | 4,403,233 |            0.772254 |          41977 |     False | 2024-01-02 09:54:07.059 UTC |
| stock_bull_flag     | bigint       | 4,403,233 |            1.000000 |              2 |     False | 2024-01-02 09:54:07.059 UTC |
| sire_total_children | bigint       | 4,403,233 |            1.000000 |            347 |     False | 2024-01-02 09:54:07.059 UTC |
| sire_dob            | timestamp(6) | 4,403,233 |            1.000000 |          10300 |     False | 2024-01-02 09:54:07.059 UTC |
{% enddocs %}
