{% docs dbt_profiler_results__prod_domains_rds__sale_tasks  %}
| column_name  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name      | varchar      | 3,226,500 |            1.000000 |              2 |     False | 2024-01-02 09:53:48.603 UTC |
| animal_id    | varchar      | 3,226,500 |            1.000000 |        3056367 |     False | 2024-01-02 09:53:48.603 UTC |
| type_id      | varchar      | 3,226,500 |            1.000000 |              1 |     False | 2024-01-02 09:53:48.603 UTC |
| sale_date    | timestamp(6) | 3,226,500 |            1.000000 |           1298 |     False | 2024-01-02 09:53:48.603 UTC |
| sold_to_herd | varchar      | 3,226,500 |            0.782538 |          37214 |     False | 2024-01-02 09:53:48.603 UTC |
| sold_to_name | varchar      | 3,226,500 |            0.836466 |          49647 |     False | 2024-01-02 09:53:48.603 UTC |
{% enddocs %}
