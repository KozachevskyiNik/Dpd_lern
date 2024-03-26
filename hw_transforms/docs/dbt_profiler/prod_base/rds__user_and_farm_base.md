{% docs dbt_profiler_results__prod_base_rds__user_and_farm_base  %}
| column_name          | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name              | varchar      |    68,836 |            1.000000 |              4 |     False | 2024-03-25 13:22:55.219 UTC |
| farm_id              | varchar      |    68,836 |            1.000000 |          51452 |     False | 2024-03-25 13:22:55.219 UTC |
| herd_number          | varchar      |    68,836 |            1.000000 |          51435 |     False | 2024-03-25 13:22:55.219 UTC |
| national_herd_id     | varchar      |    68,836 |            0.258121 |          12945 |     False | 2024-03-25 13:22:55.219 UTC |
| city                 | varchar      |    68,836 |            1.000000 |           1578 |     False | 2024-03-25 13:22:55.219 UTC |
| county               | varchar      |    68,836 |            0.675925 |            125 |     False | 2024-03-25 13:22:55.219 UTC |
| post_code            | varchar      |    68,836 |            1.000000 |           2033 |     False | 2024-03-25 13:22:55.219 UTC |
| buitelaar_flag       | bigint       |    68,836 |            1.000000 |              2 |     False | 2024-03-25 13:22:55.219 UTC |
| farm_type            | varchar      |    68,836 |            1.000000 |              8 |     False | 2024-03-25 13:22:55.219 UTC |
| farm_option          | varchar      |    68,836 |            0.787974 |              6 |     False | 2024-03-25 13:22:55.219 UTC |
| farm_level           | varchar      |    68,836 |            0.274333 |              3 |     False | 2024-03-25 13:22:55.219 UTC |
| farm_band            | varchar      |    68,836 |            0.904570 |             27 |     False | 2024-03-25 13:22:55.219 UTC |
| farm_app_type        | bigint       |    68,836 |            1.000000 |              3 |     False | 2024-03-25 13:22:55.219 UTC |
| is_pro_flag          | bigint       |    68,836 |            1.000000 |              2 |     False | 2024-03-25 13:22:55.219 UTC |
| user_id              | bigint       |    68,836 |            1.000000 |          32613 |     False | 2024-03-25 13:22:55.219 UTC |
| user_created_at      | timestamp(6) |    68,836 |            1.000000 |          49049 |     False | 2024-03-25 13:22:55.219 UTC |
| dnr_set_by           | bigint       |    68,836 |            0.213566 |            108 |     False | 2024-03-25 13:22:55.219 UTC |
| dnr_clear_by         | bigint       |    68,836 |            0.131792 |             85 |     False | 2024-03-25 13:22:55.219 UTC |
| initial_sub_type     | varchar      |    68,836 |            1.000000 |             40 |     False | 2024-03-25 13:22:55.219 UTC |
| plan_type            | varchar      |    68,836 |            1.000000 |             18 |     False | 2024-03-25 13:22:55.219 UTC |
| user_group           | varchar      |    68,836 |            0.041635 |             35 |     False | 2024-03-25 13:22:55.219 UTC |
| user_paid_until_date | timestamp(6) |    68,836 |            1.000000 |           2760 |     False | 2024-03-25 13:22:55.219 UTC |
| user_auto_renew_flag | bigint       |    68,836 |            1.000000 |              2 |     False | 2024-03-25 13:22:55.219 UTC |
| user_dnr_flag        | bigint       |    68,836 |            1.000000 |              2 |     False | 2024-03-25 13:22:55.219 UTC |
| agent_code           | varchar      |    68,836 |            0.176434 |             20 |     False | 2024-03-25 13:22:55.219 UTC |
{% enddocs %}
