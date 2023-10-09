{% docs dbt_profiler_results__prod_domains_rds__dam_data  %}
| column_name        | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 6,495,079 |            1.000000 |              4 |     False | 2023-10-07 12:05:43.720 UTC |
| child_id           | varchar      | 6,495,079 |            1.000000 |      6,495,079 |      True | 2023-10-07 12:05:43.720 UTC |
| child_dob          | timestamp(6) | 6,495,079 |            1.000000 |         12,251 |     False | 2023-10-07 12:05:43.720 UTC |
| species            | varchar      | 6,495,079 |            1.000000 |              2 |     False | 2023-10-07 12:05:43.720 UTC |
| child_sex          | varchar      | 6,495,079 |            1.000000 |              5 |     False | 2023-10-07 12:05:43.720 UTC |
| child_tag          | varchar      | 6,495,079 |            1.000000 |      6,328,458 |     False | 2023-10-07 12:05:43.720 UTC |
| child_breed        | varchar      | 6,495,079 |            1.000000 |            260 |     False | 2023-10-07 12:05:43.720 UTC |
| child_reg_date     | timestamp(6) | 6,495,079 |            0.441281 |      2,762,363 |     False | 2023-10-07 12:05:43.720 UTC |
| dam_id             | varchar      | 6,495,079 |            1.000000 |      3,249,155 |     False | 2023-10-07 12:05:43.720 UTC |
| dam_sex            | varchar      | 6,495,079 |            1.000000 |              3 |     False | 2023-10-07 12:05:43.720 UTC |
| dam_tag            | varchar      | 6,495,079 |            1.000000 |      3,030,772 |     False | 2023-10-07 12:05:43.720 UTC |
| dam_breed          | varchar      | 6,495,079 |            1.000000 |            253 |     False | 2023-10-07 12:05:43.720 UTC |
| dam_total_children | bigint       | 6,495,079 |            1.000000 |             29 |     False | 2023-10-07 12:05:43.720 UTC |
| dam_dob            | timestamp(6) | 6,495,079 |            1.000000 |         13,373 |     False | 2023-10-07 12:05:43.720 UTC |
{% enddocs %}
