{% docs dbt_profiler_results__prod_base_rds__user_and_farm_base  %}
| column_name          | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name              | varchar      |    63,185 |            1.000000 |              4 |     False | 2023-10-17 14:45:35.398 UTC |
| farm_id              | varchar      |    63,185 |            1.000000 |          45587 |     False | 2023-10-17 14:45:35.398 UTC |
| herd_number          | varchar      |    63,185 |            1.000000 |          45584 |     False | 2023-10-17 14:45:35.398 UTC |
| national_herd_id     | varchar      |    63,185 |            0.294326 |          12001 |     False | 2023-10-17 14:45:35.398 UTC |
| city                 | varchar      |    63,185 |            1.000000 |           1554 |     False | 2023-10-17 14:45:35.398 UTC |
| county               | varchar      |    63,185 |            0.739558 |            125 |     False | 2023-10-17 14:45:35.398 UTC |
| post_code            | varchar      |    63,185 |            1.000000 |           1388 |     False | 2023-10-17 14:45:35.398 UTC |
| buitelaar_flag       | bigint       |    63,185 |            1.000000 |              2 |     False | 2023-10-17 14:45:35.398 UTC |
| farm_type            | varchar      |    63,185 |            0.879861 |              8 |     False | 2023-10-17 14:45:35.398 UTC |
| farm_option          | varchar      |    63,185 |            0.684593 |              6 |     False | 2023-10-17 14:45:35.398 UTC |
| farm_level           | varchar      |    63,185 |            0.275493 |              3 |     False | 2023-10-17 14:45:35.398 UTC |
| farm_band            | varchar      |    63,185 |            0.772778 |             27 |     False | 2023-10-17 14:45:35.398 UTC |
| farm_app_type        | double       |    63,185 |            0.879861 |              3 |     False | 2023-10-17 14:45:35.398 UTC |
| is_pro_flag          | bigint       |    63,185 |            0.879861 |              2 |     False | 2023-10-17 14:45:35.398 UTC |
| user_id              | double       |    63,185 |            0.988510 |          29982 |     False | 2023-10-17 14:45:35.398 UTC |
| user_created_at      | timestamp(6) |    63,185 |            0.988510 |          43541 |     False | 2023-10-17 14:45:35.398 UTC |
| dnr_set_by           | double       |    63,185 |            0.212598 |             90 |     False | 2023-10-17 14:45:35.398 UTC |
| dnr_clear_by         | double       |    63,185 |            0.139005 |             71 |     False | 2023-10-17 14:45:35.398 UTC |
| initial_sub_type     | varchar      |    63,185 |            0.988510 |             39 |     False | 2023-10-17 14:45:35.398 UTC |
| plan_type            | varchar      |    63,185 |            0.988510 |             17 |     False | 2023-10-17 14:45:35.398 UTC |
| user_group           | varchar      |    63,185 |            0.043412 |             35 |     False | 2023-10-17 14:45:35.398 UTC |
| user_paid_until_date | timestamp(6) |    63,185 |            0.988510 |           2637 |     False | 2023-10-17 14:45:35.398 UTC |
| user_auto_renew_flag | double       |    63,185 |            0.988510 |              2 |     False | 2023-10-17 14:45:35.398 UTC |
| user_dnr_flag        | double       |    63,185 |            0.988510 |              2 |     False | 2023-10-17 14:45:35.398 UTC |
| agent_code           | varchar      |    63,185 |            0.161985 |             20 |     False | 2023-10-17 14:45:35.398 UTC |
{% enddocs %}
