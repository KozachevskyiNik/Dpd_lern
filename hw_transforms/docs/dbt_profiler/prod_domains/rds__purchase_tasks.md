{% docs dbt_profiler_results__prod_domains_rds__purchase_tasks  %}
| column_name       | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar      | 1,732,746 |            1.000000 |              2 |     False | 2024-01-02 09:53:29.998 UTC |
| animal_id         | varchar      | 1,732,746 |            1.000000 |        1462000 |     False | 2024-01-02 09:53:29.998 UTC |
| type_id           | varchar      | 1,732,746 |            1.000000 |              1 |     False | 2024-01-02 09:53:29.998 UTC |
| purchase_date     | timestamp(6) | 1,732,746 |            1.000000 |           1302 |     False | 2024-01-02 09:53:29.998 UTC |
| sourced_from_herd | varchar      | 1,732,746 |            0.665465 |          64441 |     False | 2024-01-02 09:53:29.998 UTC |
| sourced_from_name | varchar      | 1,732,746 |            0.709291 |          70556 |     False | 2024-01-02 09:53:29.998 UTC |
{% enddocs %}
