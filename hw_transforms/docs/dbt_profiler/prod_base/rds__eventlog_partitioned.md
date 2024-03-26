{% docs dbt_profiler_results__prod_base_rds__eventlog_partitioned  %}
| column_name            | data_type    |   row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------- | ------------ | ----------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                | varchar      | 210,711,577 |            1.000000 |              4 |     False | 2024-03-25 13:08:05.621 UTC |
| primary_key            | varchar      | 210,711,577 |            1.000000 |      210711564 |     False | 2024-03-25 13:08:05.621 UTC |
| event_created_datetime | timestamp(6) | 210,711,577 |            1.000000 |       51163724 |     False | 2024-03-25 13:08:05.621 UTC |
| farm_id                | varchar      | 210,711,577 |            1.000000 |          48909 |     False | 2024-03-25 13:08:05.621 UTC |
| user_id                | bigint       | 210,711,577 |            1.000000 |          31856 |     False | 2024-03-25 13:08:05.621 UTC |
| tracking_code          | varchar      | 210,711,577 |            1.000000 |            308 |     False | 2024-03-25 13:08:05.621 UTC |
| action                 | varchar      | 210,711,577 |            0.249194 |             52 |     False | 2024-03-25 13:08:05.621 UTC |
| description            | varchar      | 210,711,577 |            1.000000 |         113707 |     False | 2024-03-25 13:08:05.621 UTC |
| data                   | varchar      | 210,711,577 |            0.989218 |       12516446 |     False | 2024-03-25 13:08:05.621 UTC |
{% enddocs %}
