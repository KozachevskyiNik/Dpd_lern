{% docs dbt_profiler_results__prod_domains_bq__get_login_frequency  %}
| column_name       | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar   |    93,654 |            1.000000 |              4 |     False | 2024-01-31 13:52:45.190 UTC |
| user_id           | bigint    |    93,654 |            1.000000 |          31853 |     False | 2024-01-31 13:52:45.190 UTC |
| farm_id           | varchar   |    93,654 |            1.000000 |          49499 |     False | 2024-01-31 13:52:45.190 UTC |
| herd_number       | varchar   |    93,654 |            1.000000 |          49485 |     False | 2024-01-31 13:52:45.190 UTC |
| national_herd_id  | varchar   |    93,654 |            0.375681 |          12454 |     False | 2024-01-31 13:52:45.190 UTC |
| county            | varchar   |    93,654 |            0.728287 |            125 |     False | 2024-01-31 13:52:45.190 UTC |
| plan_type         | varchar   |    93,654 |            1.000000 |             19 |     False | 2024-01-31 13:52:45.190 UTC |
| origin_app_type   | varchar   |    93,654 |            1.000000 |              3 |     False | 2024-01-31 13:52:45.190 UTC |
| farm_option       | varchar   |    93,654 |            0.852158 |              6 |     False | 2024-01-31 13:52:45.190 UTC |
| farm_level        | varchar   |    93,654 |            0.411194 |              3 |     False | 2024-01-31 13:52:45.190 UTC |
| farm_band         | varchar   |    93,654 |            0.929325 |             27 |     False | 2024-01-31 13:52:45.190 UTC |
| month_date        | date      |    93,654 |            0.562282 |              3 |     False | 2024-01-31 13:52:45.190 UTC |
| monthly_app_login | bigint    |    93,654 |            0.562282 |            325 |     False | 2024-01-31 13:52:45.190 UTC |
{% enddocs %}
