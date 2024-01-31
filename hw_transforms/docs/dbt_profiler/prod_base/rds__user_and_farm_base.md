{% docs dbt_profiler_results__prod_base_rds__user_and_farm_base  %}
| column_name          | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name              | varchar      |    65,004 |            1.000000 |              4 |     False | 2024-01-31 13:52:13.607 UTC |
| farm_id              | varchar      |    65,004 |            1.000000 |          49508 |     False | 2024-01-31 13:52:13.607 UTC |
| herd_number          | varchar      |    65,004 |            1.000000 |          49494 |     False | 2024-01-31 13:52:13.607 UTC |
| national_herd_id     | varchar      |    65,004 |            0.254677 |          12459 |     False | 2024-01-31 13:52:13.607 UTC |
| city                 | varchar      |    65,004 |            1.000000 |           1569 |     False | 2024-01-31 13:52:13.607 UTC |
| county               | varchar      |    65,004 |            0.694803 |            125 |     False | 2024-01-31 13:52:13.607 UTC |
| post_code            | varchar      |    65,004 |            1.000000 |           1808 |     False | 2024-01-31 13:52:13.607 UTC |
| buitelaar_flag       | bigint       |    65,004 |            1.000000 |              2 |     False | 2024-01-31 13:52:13.607 UTC |
| farm_type            | varchar      |    65,004 |            1.000000 |              8 |     False | 2024-01-31 13:52:13.607 UTC |
| farm_option          | varchar      |    65,004 |            0.789859 |              6 |     False | 2024-01-31 13:52:13.607 UTC |
| farm_level           | varchar      |    65,004 |            0.284736 |              3 |     False | 2024-01-31 13:52:13.607 UTC |
| farm_band            | varchar      |    65,004 |            0.898391 |             27 |     False | 2024-01-31 13:52:13.607 UTC |
| farm_app_type        | bigint       |    65,004 |            1.000000 |              3 |     False | 2024-01-31 13:52:13.607 UTC |
| is_pro_flag          | bigint       |    65,004 |            1.000000 |              2 |     False | 2024-01-31 13:52:13.607 UTC |
| user_id              | bigint       |    65,004 |            1.000000 |          31858 |     False | 2024-01-31 13:52:13.607 UTC |
| user_created_at      | timestamp(6) |    65,004 |            1.000000 |          47202 |     False | 2024-01-31 13:52:13.607 UTC |
| dnr_set_by           | bigint       |    65,004 |            0.212002 |            106 |     False | 2024-01-31 13:52:13.607 UTC |
| dnr_clear_by         | bigint       |    65,004 |            0.130530 |             85 |     False | 2024-01-31 13:52:13.607 UTC |
| initial_sub_type     | varchar      |    65,004 |            1.000000 |             40 |     False | 2024-01-31 13:52:13.607 UTC |
| plan_type            | varchar      |    65,004 |            1.000000 |             19 |     False | 2024-01-31 13:52:13.607 UTC |
| user_group           | varchar      |    65,004 |            0.039044 |             35 |     False | 2024-01-31 13:52:13.607 UTC |
| user_paid_until_date | timestamp(6) |    65,004 |            1.000000 |           2715 |     False | 2024-01-31 13:52:13.607 UTC |
| user_auto_renew_flag | bigint       |    65,004 |            1.000000 |              2 |     False | 2024-01-31 13:52:13.607 UTC |
| user_dnr_flag        | bigint       |    65,004 |            1.000000 |              2 |     False | 2024-01-31 13:52:13.607 UTC |
| agent_code           | varchar      |    65,004 |            0.170390 |             20 |     False | 2024-01-31 13:52:13.607 UTC |
{% enddocs %}
