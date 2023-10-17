{% docs dbt_profiler_results__prod_domains_rds__dam_data  %}
| column_name        | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 6,527,485 |            1.000000 |              4 |     False | 2023-10-17 14:47:20.132 UTC |
| child_id           | varchar      | 6,527,485 |            1.000000 |        6527485 |      True | 2023-10-17 14:47:20.132 UTC |
| child_dob          | timestamp(6) | 6,527,485 |            1.000000 |          12264 |     False | 2023-10-17 14:47:20.132 UTC |
| species            | varchar      | 6,527,485 |            1.000000 |              2 |     False | 2023-10-17 14:47:20.132 UTC |
| child_sex          | varchar      | 6,527,485 |            1.000000 |              5 |     False | 2023-10-17 14:47:20.132 UTC |
| child_tag          | varchar      | 6,527,485 |            1.000000 |        6359456 |     False | 2023-10-17 14:47:20.132 UTC |
| child_breed        | varchar      | 6,527,485 |            1.000000 |            261 |     False | 2023-10-17 14:47:20.132 UTC |
| child_reg_date     | timestamp(6) | 6,527,485 |            0.439813 |        2766930 |     False | 2023-10-17 14:47:20.132 UTC |
| dam_id             | varchar      | 6,527,485 |            1.000000 |        3270710 |     False | 2023-10-17 14:47:20.132 UTC |
| dam_sex            | varchar      | 6,527,485 |            1.000000 |              3 |     False | 2023-10-17 14:47:20.132 UTC |
| dam_tag            | varchar      | 6,527,485 |            1.000000 |        3049090 |     False | 2023-10-17 14:47:20.132 UTC |
| dam_breed          | varchar      | 6,527,485 |            1.000000 |            253 |     False | 2023-10-17 14:47:20.132 UTC |
| dam_total_children | bigint       | 6,527,485 |            1.000000 |             31 |     False | 2023-10-17 14:47:20.132 UTC |
| dam_dob            | timestamp(6) | 6,527,485 |            1.000000 |          13391 |     False | 2023-10-17 14:47:20.132 UTC |
{% enddocs %}
