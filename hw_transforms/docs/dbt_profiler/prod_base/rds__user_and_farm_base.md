{% docs dbt_profiler_results__prod_base_rds__user_and_farm_base  %}
| column_name          | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name              | varchar      |    57,879 |            1.000000 |              4 |     False | 2023-10-26 15:18:22.012 UTC |
| farm_id              | varchar      |    57,879 |            1.000000 |          46329 |     False | 2023-10-26 15:18:22.012 UTC |
| herd_number          | varchar      |    57,879 |            1.000000 |          46318 |     False | 2023-10-26 15:18:22.012 UTC |
| national_herd_id     | varchar      |    57,879 |            0.259058 |          12050 |     False | 2023-10-26 15:18:22.012 UTC |
| city                 | varchar      |    57,879 |            1.000000 |           1557 |     False | 2023-10-26 15:18:22.012 UTC |
| county               | varchar      |    57,879 |            0.729228 |            125 |     False | 2023-10-26 15:18:22.012 UTC |
| post_code            | varchar      |    57,879 |            1.000000 |           1489 |     False | 2023-10-26 15:18:22.012 UTC |
| buitelaar_flag       | bigint       |    57,879 |            1.000000 |              2 |     False | 2023-10-26 15:18:22.012 UTC |
| farm_type            | varchar      |    57,879 |            1.000000 |              8 |     False | 2023-10-26 15:18:22.012 UTC |
| farm_option          | varchar      |    57,879 |            0.781873 |              6 |     False | 2023-10-26 15:18:22.012 UTC |
| farm_level           | varchar      |    57,879 |            0.303271 |              3 |     False | 2023-10-26 15:18:22.012 UTC |
| farm_band            | varchar      |    57,879 |            0.883637 |             27 |     False | 2023-10-26 15:18:22.012 UTC |
| farm_app_type        | bigint       |    57,879 |            1.000000 |              3 |     False | 2023-10-26 15:18:22.012 UTC |
| is_pro_flag          | bigint       |    57,879 |            1.000000 |              2 |     False | 2023-10-26 15:18:22.012 UTC |
| user_id              | bigint       |    57,879 |            1.000000 |          30366 |     False | 2023-10-26 15:18:22.012 UTC |
| user_created_at      | timestamp(6) |    57,879 |            1.000000 |          44252 |     False | 2023-10-26 15:18:22.012 UTC |
| dnr_set_by           | bigint       |    57,879 |            0.210387 |             92 |     False | 2023-10-26 15:18:22.012 UTC |
| dnr_clear_by         | bigint       |    57,879 |            0.129080 |             73 |     False | 2023-10-26 15:18:22.012 UTC |
| initial_sub_type     | varchar      |    57,879 |            1.000000 |             39 |     False | 2023-10-26 15:18:22.012 UTC |
| plan_type            | varchar      |    57,879 |            1.000000 |             17 |     False | 2023-10-26 15:18:22.012 UTC |
| user_group           | varchar      |    57,879 |            0.028836 |             35 |     False | 2023-10-26 15:18:22.012 UTC |
| user_paid_until_date | timestamp(6) |    57,879 |            1.000000 |           2656 |     False | 2023-10-26 15:18:22.012 UTC |
| user_auto_renew_flag | bigint       |    57,879 |            1.000000 |              2 |     False | 2023-10-26 15:18:22.012 UTC |
| user_dnr_flag        | bigint       |    57,879 |            1.000000 |              2 |     False | 2023-10-26 15:18:22.012 UTC |
| agent_code           | varchar      |    57,879 |            0.154357 |             20 |     False | 2023-10-26 15:18:22.012 UTC |
{% enddocs %}
