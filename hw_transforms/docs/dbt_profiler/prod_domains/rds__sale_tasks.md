{% docs dbt_profiler_results__prod_domains_rds__sale_tasks  %}
| column_name  | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name      | varchar      | 2,775,446 |            1.000000 |              2 |     False | 2023-10-07 12:07:06.536 UTC |
| animal_id    | varchar      | 2,775,446 |            1.000000 |      2,730,041 |     False | 2023-10-07 12:07:06.536 UTC |
| type_id      | varchar      | 2,775,446 |            1.000000 |              1 |     False | 2023-10-07 12:07:06.536 UTC |
| sale_date    | timestamp(6) | 2,775,446 |            1.000000 |          1,212 |     False | 2023-10-07 12:07:06.536 UTC |
| sold_to_herd | varchar      | 2,775,446 |            0.000161 |             86 |     False | 2023-10-07 12:07:06.536 UTC |
| sold_to_name | varchar      | 2,775,446 |            0.000271 |            120 |     False | 2023-10-07 12:07:06.536 UTC |
{% enddocs %}
