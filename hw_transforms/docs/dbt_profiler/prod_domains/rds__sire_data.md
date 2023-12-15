
{% docs dbt_profiler_results__prod_domains_rds__sire_data  %}
| column_name         | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar      | 4,265,601 |            1.000000 |              3 |     False | 2023-10-26 15:21:25.488 UTC |
| child_id            | varchar      | 4,265,601 |            1.000000 |        4265601 |      True | 2023-10-26 15:21:25.488 UTC |
| child_dob           | timestamp(6) | 4,265,601 |            1.000000 |          12909 |     False | 2023-10-26 15:21:25.488 UTC |
| species             | varchar      | 4,265,601 |            1.000000 |              2 |     False | 2023-10-26 15:21:25.488 UTC |
| child_sex           | varchar      | 4,265,601 |            1.000000 |              4 |     False | 2023-10-26 15:21:25.488 UTC |
| child_tag           | varchar      | 4,265,601 |            1.000000 |        4136042 |     False | 2023-10-26 15:21:25.488 UTC |
| child_breed         | varchar      | 4,265,601 |            1.000000 |            223 |     False | 2023-10-26 15:21:25.488 UTC |
| child_reg_date      | timestamp(6) | 4,265,601 |            0.511785 |        2116515 |     False | 2023-10-26 15:21:25.488 UTC |
| sire_id             | varchar      | 4,265,601 |            1.000000 |         686347 |     False | 2023-10-26 15:21:25.488 UTC |
| sire_sex            | varchar      | 4,265,601 |            1.000000 |              4 |     False | 2023-10-26 15:21:25.488 UTC |
| sire_tag            | varchar      | 4,265,601 |            1.000000 |         131571 |     False | 2023-10-26 15:21:25.488 UTC |
| sire_breed          | varchar      | 4,265,601 |            1.000000 |            192 |     False | 2023-10-26 15:21:25.488 UTC |
| sire_pedigree       | varchar      | 4,265,601 |            0.777890 |          40710 |     False | 2023-10-26 15:21:25.488 UTC |
| stock_bull_flag     | bigint       | 4,265,601 |            1.000000 |              2 |     False | 2023-10-26 15:21:25.488 UTC |
| sire_total_children | bigint       | 4,265,601 |            1.000000 |            344 |     False | 2023-10-26 15:21:25.488 UTC |
| sire_dob            | timestamp(6) | 4,265,601 |            1.000000 |          10182 |     False | 2023-10-26 15:21:25.488 UTC |
{% enddocs%}