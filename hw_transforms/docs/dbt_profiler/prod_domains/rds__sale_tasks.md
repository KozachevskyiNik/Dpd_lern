{% docs dbt_profiler_results__prod_domains_rds__sale_tasks  %}
| column_name  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name      | varchar      | 3,631,722 |            1.000000 |              2 |     False | 2024-03-26 08:05:44.955 UTC |
| animal_id    | varchar      | 3,631,722 |            1.000000 |        3486293 |     False | 2024-03-26 08:05:44.955 UTC |
| type_id      | varchar      | 3,631,722 |            1.000000 |              1 |     False | 2024-03-26 08:05:44.955 UTC |
| sale_date    | timestamp(6) | 3,631,722 |            1.000000 |           1384 |     False | 2024-03-26 08:05:44.955 UTC |
| sold_to_herd | varchar      | 3,631,722 |            0.773303 |          38280 |     False | 2024-03-26 08:05:44.955 UTC |
| sold_to_name | varchar      | 3,631,722 |            0.829574 |          51960 |     False | 2024-03-26 08:05:44.955 UTC |
{% enddocs %}
