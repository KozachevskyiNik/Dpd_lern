{% docs dbt_profiler_results__prod_base_rds__eventlog_partitioned  %}
| column_name            | data_type    |   row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------- | ------------ | ----------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                | varchar      | 198,735,103 |            1.000000 |              4 |     False | 2024-02-15 16:25:51.044 UTC |
| primary_key            | varchar      | 198,735,103 |            1.000000 |      198735090 |     False | 2024-02-15 16:25:51.044 UTC |
| event_created_datetime | timestamp(6) | 198,735,103 |            1.000000 |       48571997 |     False | 2024-02-15 16:25:51.044 UTC |
| farm_id                | varchar      | 198,735,103 |            1.000000 |          47544 |     False | 2024-02-15 16:25:51.044 UTC |
| user_id                | bigint       | 198,735,103 |            1.000000 |          31325 |     False | 2024-02-15 16:25:51.044 UTC |
| tracking_code          | varchar      | 198,735,103 |            1.000000 |            308 |     False | 2024-02-15 16:25:51.044 UTC |
| action                 | varchar      | 198,735,103 |            0.264097 |             52 |     False | 2024-02-15 16:25:51.044 UTC |
| description            | varchar      | 198,735,103 |            1.000000 |         113705 |     False | 2024-02-15 16:25:51.044 UTC |
| data                   | varchar      | 198,735,103 |            0.988569 |       12344584 |     False | 2024-02-15 16:25:51.044 UTC |
{% enddocs %}
