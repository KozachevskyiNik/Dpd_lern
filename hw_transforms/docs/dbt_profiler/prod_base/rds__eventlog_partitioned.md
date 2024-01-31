{% docs dbt_profiler_results__prod_base_rds__eventlog_partitioned  %}
| column_name            | data_type    |   row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ---------------------- | ------------ | ----------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                | varchar      | 192,320,138 |            1.000000 |              4 |     False | 2024-01-31 13:41:59.085 UTC |
| primary_key            | varchar      | 192,320,138 |            1.000000 |      192320125 |     False | 2024-01-31 13:41:59.085 UTC |
| event_created_datetime | timestamp(6) | 192,320,138 |            1.000000 |       47272087 |     False | 2024-01-31 13:41:59.085 UTC |
| farm_id                | varchar      | 192,320,138 |            1.000000 |          46846 |     False | 2024-01-31 13:41:59.085 UTC |
| user_id                | bigint       | 192,320,138 |            1.000000 |          30962 |     False | 2024-01-31 13:41:59.085 UTC |
| tracking_code          | varchar      | 192,320,138 |            1.000000 |            308 |     False | 2024-01-31 13:41:59.085 UTC |
| action                 | varchar      | 192,320,138 |            0.272807 |             52 |     False | 2024-01-31 13:41:59.085 UTC |
| description            | varchar      | 192,320,138 |            1.000000 |         113705 |     False | 2024-01-31 13:41:59.085 UTC |
| data                   | varchar      | 192,320,138 |            0.988187 |       12247577 |     False | 2024-01-31 13:41:59.085 UTC |
{% enddocs %}
