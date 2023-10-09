{% docs dbt_profiler_results__prod_domains_rds__purchase_tasks  %}
| column_name       | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name           | varchar      | 1,270,711 |            1.000000 |              2 |     False | 2023-10-07 12:06:46.741 UTC |
| animal_id         | varchar      | 1,270,711 |            1.000000 |      1,257,991 |     False | 2023-10-07 12:06:46.741 UTC |
| type_id           | varchar      | 1,270,711 |            1.000000 |              1 |     False | 2023-10-07 12:06:46.741 UTC |
| purchase_date     | timestamp(6) | 1,270,711 |            1.000000 |          1,216 |     False | 2023-10-07 12:06:46.741 UTC |
| sourced_from_herd | varchar      | 1,270,711 |            0.001477 |            245 |     False | 2023-10-07 12:06:46.741 UTC |
| sourced_from_name | varchar      | 1,270,711 |            0.001633 |            265 |     False | 2023-10-07 12:06:46.741 UTC |
{% enddocs %}
