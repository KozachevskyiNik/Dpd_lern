{% docs dbt_profiler_results__prod_base_rds__user_and_farm_base  %}
| column_name          | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| -------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name              | varchar      |    62,966 |            1.000000 |              4 |     False | 2024-01-02 09:49:55.034 UTC |
| farm_id              | varchar      |    62,966 |            1.000000 |          48499 |     False | 2024-01-02 09:49:55.034 UTC |
| herd_number          | varchar      |    62,966 |            1.000000 |          48485 |     False | 2024-01-02 09:49:55.034 UTC |
| national_herd_id     | varchar      |    62,966 |            0.253550 |          12240 |     False | 2024-01-02 09:49:55.034 UTC |
| city                 | varchar      |    62,966 |            1.000000 |           1567 |     False | 2024-01-02 09:49:55.034 UTC |
| county               | varchar      |    62,966 |            0.703348 |            125 |     False | 2024-01-02 09:49:55.034 UTC |
| post_code            | varchar      |    62,966 |            1.000000 |           1689 |     False | 2024-01-02 09:49:55.034 UTC |
| buitelaar_flag       | bigint       |    62,966 |            1.000000 |              2 |     False | 2024-01-02 09:49:55.034 UTC |
| farm_type            | varchar      |    62,966 |            1.000000 |              8 |     False | 2024-01-02 09:49:55.034 UTC |
| farm_option          | varchar      |    62,966 |            0.788251 |              6 |     False | 2024-01-02 09:49:55.034 UTC |
| farm_level           | varchar      |    62,966 |            0.287981 |              3 |     False | 2024-01-02 09:49:55.034 UTC |
| farm_band            | varchar      |    62,966 |            0.894403 |             27 |     False | 2024-01-02 09:49:55.034 UTC |
| farm_app_type        | bigint       |    62,966 |            1.000000 |              3 |     False | 2024-01-02 09:49:55.034 UTC |
| is_pro_flag          | bigint       |    62,966 |            1.000000 |              2 |     False | 2024-01-02 09:49:55.034 UTC |
| user_id              | bigint       |    62,966 |            1.000000 |          31375 |     False | 2024-01-02 09:49:55.034 UTC |
| user_created_at      | timestamp(6) |    62,966 |            1.000000 |          46301 |     False | 2024-01-02 09:49:55.034 UTC |
| dnr_set_by           | bigint       |    62,966 |            0.210320 |            100 |     False | 2024-01-02 09:49:55.034 UTC |
| dnr_clear_by         | bigint       |    62,966 |            0.129276 |             80 |     False | 2024-01-02 09:49:55.034 UTC |
| initial_sub_type     | varchar      |    62,966 |            1.000000 |             40 |     False | 2024-01-02 09:49:55.034 UTC |
| plan_type            | varchar      |    62,966 |            1.000000 |             19 |     False | 2024-01-02 09:49:55.034 UTC |
| user_group           | varchar      |    62,966 |            0.036353 |             35 |     False | 2024-01-02 09:49:55.034 UTC |
| user_paid_until_date | timestamp(6) |    62,966 |            1.000000 |           2682 |     False | 2024-01-02 09:49:55.034 UTC |
| user_auto_renew_flag | bigint       |    62,966 |            1.000000 |              2 |     False | 2024-01-02 09:49:55.034 UTC |
| user_dnr_flag        | bigint       |    62,966 |            1.000000 |              2 |     False | 2024-01-02 09:49:55.034 UTC |
| agent_code           | varchar      |    62,966 |            0.167710 |             20 |     False | 2024-01-02 09:49:55.034 UTC |
{% enddocs %}
