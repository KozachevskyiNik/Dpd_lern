{% docs dbt_profiler_results__prod_base_rds__user_and_farm_base  %}
| column_name          | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name              | varchar      |    59,898 |            1.000000 |              4 |     False | 2023-11-17 15:22:40.464 UTC |
| farm_id              | varchar      |    59,898 |            1.000000 |          47171 |     False | 2023-11-17 15:22:40.464 UTC |
| herd_number          | varchar      |    59,898 |            1.000000 |          47159 |     False | 2023-11-17 15:22:40.464 UTC |
| national_herd_id     | varchar      |    59,898 |            0.256102 |          12105 |     False | 2023-11-17 15:22:40.464 UTC |
| city                 | varchar      |    59,898 |            1.000000 |           1561 |     False | 2023-11-17 15:22:40.464 UTC |
| county               | varchar      |    59,898 |            0.718388 |            125 |     False | 2023-11-17 15:22:40.464 UTC |
| post_code            | varchar      |    59,898 |            1.000000 |           1565 |     False | 2023-11-17 15:22:40.464 UTC |
| buitelaar_flag       | bigint       |    59,898 |            1.000000 |              2 |     False | 2023-11-17 15:22:40.464 UTC |
| farm_type            | varchar      |    59,898 |            1.000000 |              8 |     False | 2023-11-17 15:22:40.464 UTC |
| farm_option          | varchar      |    59,898 |            0.784333 |              6 |     False | 2023-11-17 15:22:40.464 UTC |
| farm_level           | varchar      |    59,898 |            0.295987 |              3 |     False | 2023-11-17 15:22:40.464 UTC |
| farm_band            | varchar      |    59,898 |            0.888160 |             27 |     False | 2023-11-17 15:22:40.464 UTC |
| farm_app_type        | bigint       |    59,898 |            1.000000 |              3 |     False | 2023-11-17 15:22:40.464 UTC |
| is_pro_flag          | bigint       |    59,898 |            1.000000 |              2 |     False | 2023-11-17 15:22:40.464 UTC |
| user_id              | bigint       |    59,898 |            1.000000 |          30753 |     False | 2023-11-17 15:22:40.464 UTC |
| user_created_at      | timestamp(6) |    59,898 |            1.000000 |          45033 |     False | 2023-11-17 15:22:40.464 UTC |
| dnr_set_by           | bigint       |    59,898 |            0.209540 |             95 |     False | 2023-11-17 15:22:40.464 UTC |
| dnr_clear_by         | bigint       |    59,898 |            0.128535 |             78 |     False | 2023-11-17 15:22:40.464 UTC |
| initial_sub_type     | varchar      |    59,898 |            1.000000 |             39 |     False | 2023-11-17 15:22:40.464 UTC |
| plan_type            | varchar      |    59,898 |            1.000000 |             17 |     False | 2023-11-17 15:22:40.464 UTC |
| user_group           | varchar      |    59,898 |            0.029984 |             35 |     False | 2023-11-17 15:22:40.464 UTC |
| user_paid_until_date | timestamp(6) |    59,898 |            1.000000 |           2665 |     False | 2023-11-17 15:22:40.464 UTC |
| user_auto_renew_flag | bigint       |    59,898 |            1.000000 |              2 |     False | 2023-11-17 15:22:40.464 UTC |
| user_dnr_flag        | bigint       |    59,898 |            1.000000 |              2 |     False | 2023-11-17 15:22:40.464 UTC |
| agent_code           | varchar      |    59,898 |            0.158469 |             20 |     False | 2023-11-17 15:22:40.464 UTC |
{% enddocs %}
