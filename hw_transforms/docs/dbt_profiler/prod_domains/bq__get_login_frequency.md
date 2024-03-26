{% docs dbt_profiler_results__prod_domains_bq__get_login_frequency  %}
| column_name       | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar   |    76,480 |            1.000000 |              4 |     False | 2024-03-26 07:56:31.615 UTC |
| user_id           | bigint    |    76,480 |            1.000000 |          32603 |     False | 2024-03-26 07:56:31.615 UTC |
| farm_id           | varchar   |    76,480 |            1.000000 |          51406 |     False | 2024-03-26 07:56:31.615 UTC |
| herd_number       | varchar   |    76,480 |            1.000000 |          51389 |     False | 2024-03-26 07:56:31.615 UTC |
| national_herd_id  | varchar   |    76,480 |            0.308054 |          12938 |     False | 2024-03-26 07:56:31.615 UTC |
| county            | varchar   |    76,480 |            0.696862 |            125 |     False | 2024-03-26 07:56:31.615 UTC |
| plan_type         | varchar   |    76,480 |            1.000000 |             18 |     False | 2024-03-26 07:56:31.615 UTC |
| origin_app_type   | varchar   |    76,480 |            1.000000 |              3 |     False | 2024-03-26 07:56:31.615 UTC |
| farm_option       | varchar   |    76,480 |            0.809179 |              6 |     False | 2024-03-26 07:56:31.615 UTC |
| farm_level        | varchar   |    76,480 |            0.318135 |              3 |     False | 2024-03-26 07:56:31.615 UTC |
| farm_band         | varchar   |    76,480 |            0.914030 |             27 |     False | 2024-03-26 07:56:31.615 UTC |
| month_date        | date      |    76,480 |            0.352262 |              3 |     False | 2024-03-26 07:56:31.615 UTC |
| monthly_app_login | bigint    |    76,480 |            0.247594 |            226 |     False | 2024-03-26 07:56:31.615 UTC |
{% enddocs %}
