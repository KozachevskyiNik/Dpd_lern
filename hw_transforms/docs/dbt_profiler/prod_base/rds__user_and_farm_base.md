{% docs dbt_profiler_results__prod_base_rds__user_and_farm_base  %}
| column_name          | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name              | varchar      |    59,203 |            1.000000 |              4 |     False | 2023-10-07 12:04:13.249 UTC |
| farm_id              | varchar      |    59,203 |            1.000000 |         45,373 |     False | 2023-10-07 12:04:13.249 UTC |
| herd_number          | varchar      |    59,203 |            1.000000 |         45,367 |     False | 2023-10-07 12:04:13.249 UTC |
| national_herd_id     | varchar      |    59,203 |            0.278567 |         11,978 |     False | 2023-10-07 12:04:13.249 UTC |
| city                 | varchar      |    59,203 |            1.000000 |          1,552 |     False | 2023-10-07 12:04:13.249 UTC |
| county               | varchar      |    59,203 |            0.741027 |            125 |     False | 2023-10-07 12:04:13.249 UTC |
| post_code            | varchar      |    59,203 |            1.000000 |          1,368 |     False | 2023-10-07 12:04:13.249 UTC |
| buitelaar_flag       | bigint       |    59,203 |            1.000000 |              2 |     False | 2023-10-07 12:04:13.249 UTC |
| farm_type            | varchar      |    59,203 |            0.933956 |              8 |     False | 2023-10-07 12:04:13.249 UTC |
| farm_option          | varchar      |    59,203 |            0.726450 |              6 |     False | 2023-10-07 12:04:13.249 UTC |
| farm_level           | varchar      |    59,203 |            0.292941 |              3 |     False | 2023-10-07 12:04:13.249 UTC |
| farm_band            | varchar      |    59,203 |            0.819654 |             27 |     False | 2023-10-07 12:04:13.249 UTC |
| farm_app_type        | double       |    59,203 |            0.933956 |              3 |     False | 2023-10-07 12:04:13.249 UTC |
| is_pro_flag          | bigint       |    59,203 |            0.933956 |              2 |     False | 2023-10-07 12:04:13.249 UTC |
| user_id              | double       |    59,203 |            0.993041 |         29,884 |     False | 2023-10-07 12:04:13.249 UTC |
| user_created_at      | timestamp(6) |    59,203 |            0.993041 |         43,343 |     False | 2023-10-07 12:04:13.249 UTC |
| dnr_set_by           | double       |    59,203 |            0.211915 |             89 |     False | 2023-10-07 12:04:13.249 UTC |
| dnr_clear_by         | double       |    59,203 |            0.134284 |             70 |     False | 2023-10-07 12:04:13.249 UTC |
| initial_sub_type     | varchar      |    59,203 |            0.993041 |             39 |     False | 2023-10-07 12:04:13.249 UTC |
| plan_type            | varchar      |    59,203 |            0.993041 |             17 |     False | 2023-10-07 12:04:13.249 UTC |
| user_group           | varchar      |    59,203 |            0.035961 |             35 |     False | 2023-10-07 12:04:13.249 UTC |
| user_paid_until_date | timestamp(6) |    59,203 |            0.993041 |          2,631 |     False | 2023-10-07 12:04:13.249 UTC |
| user_auto_renew_flag | double       |    59,203 |            0.993041 |              2 |     False | 2023-10-07 12:04:13.249 UTC |
| user_dnr_flag        | double       |    59,203 |            0.993041 |              2 |     False | 2023-10-07 12:04:13.249 UTC |
| agent_code           | varchar      |    59,203 |            0.157104 |             20 |     False | 2023-10-07 12:04:13.249 UTC |
{% enddocs %}
