{% docs dbt_profiler_results__prod_base_rds__user_and_farm_base  %}
| column_name          | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name              | varchar      |    66,064 |            1.000000 |              4 |     False | 2024-02-15 16:29:42.092 UTC |
| farm_id              | varchar      |    66,064 |            1.000000 |          50013 |     False | 2024-02-15 16:29:42.092 UTC |
| herd_number          | varchar      |    66,064 |            1.000000 |          49999 |     False | 2024-02-15 16:29:42.092 UTC |
| national_herd_id     | varchar      |    66,064 |            0.256690 |          12626 |     False | 2024-02-15 16:29:42.092 UTC |
| city                 | varchar      |    66,064 |            1.000000 |           1575 |     False | 2024-02-15 16:29:42.092 UTC |
| county               | varchar      |    66,064 |            0.690270 |            125 |     False | 2024-02-15 16:29:42.092 UTC |
| post_code            | varchar      |    66,064 |            1.000000 |           1869 |     False | 2024-02-15 16:29:42.092 UTC |
| buitelaar_flag       | bigint       |    66,064 |            1.000000 |              2 |     False | 2024-02-15 16:29:42.092 UTC |
| farm_type            | varchar      |    66,064 |            1.000000 |              8 |     False | 2024-02-15 16:29:42.092 UTC |
| farm_option          | varchar      |    66,064 |            0.790582 |              6 |     False | 2024-02-15 16:29:42.092 UTC |
| farm_level           | varchar      |    66,064 |            0.281621 |              3 |     False | 2024-02-15 16:29:42.092 UTC |
| farm_band            | varchar      |    66,064 |            0.900339 |             27 |     False | 2024-02-15 16:29:42.092 UTC |
| farm_app_type        | bigint       |    66,064 |            1.000000 |              3 |     False | 2024-02-15 16:29:42.092 UTC |
| is_pro_flag          | bigint       |    66,064 |            1.000000 |              2 |     False | 2024-02-15 16:29:42.092 UTC |
| user_id              | bigint       |    66,064 |            1.000000 |          32109 |     False | 2024-02-15 16:29:42.092 UTC |
| user_created_at      | timestamp(6) |    66,064 |            1.000000 |          47677 |     False | 2024-02-15 16:29:42.092 UTC |
| dnr_set_by           | bigint       |    66,064 |            0.213081 |            106 |     False | 2024-02-15 16:29:42.092 UTC |
| dnr_clear_by         | bigint       |    66,064 |            0.131433 |             85 |     False | 2024-02-15 16:29:42.092 UTC |
| initial_sub_type     | varchar      |    66,064 |            1.000000 |             40 |     False | 2024-02-15 16:29:42.092 UTC |
| plan_type            | varchar      |    66,064 |            1.000000 |             19 |     False | 2024-02-15 16:29:42.092 UTC |
| user_group           | varchar      |    66,064 |            0.040249 |             35 |     False | 2024-02-15 16:29:42.092 UTC |
| user_paid_until_date | timestamp(6) |    66,064 |            1.000000 |           2732 |     False | 2024-02-15 16:29:42.092 UTC |
| user_auto_renew_flag | bigint       |    66,064 |            1.000000 |              2 |     False | 2024-02-15 16:29:42.092 UTC |
| user_dnr_flag        | bigint       |    66,064 |            1.000000 |              2 |     False | 2024-02-15 16:29:42.092 UTC |
| agent_code           | varchar      |    66,064 |            0.172227 |             20 |     False | 2024-02-15 16:29:42.092 UTC |
{% enddocs %}
