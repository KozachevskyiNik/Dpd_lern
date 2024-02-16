{% docs dbt_profiler_results__prod_domains_rds__dam_data  %}
| column_name        | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 7,121,912 |            1.000000 |              4 |     False | 2024-02-15 16:32:45.285 UTC |
| child_id           | varchar      | 7,121,912 |            1.000000 |        7121912 |      True | 2024-02-15 16:32:45.285 UTC |
| child_dob          | timestamp(6) | 7,121,912 |            1.000000 |          12432 |     False | 2024-02-15 16:32:45.285 UTC |
| species            | varchar      | 7,121,912 |            1.000000 |              2 |     False | 2024-02-15 16:32:45.285 UTC |
| child_sex          | varchar      | 7,121,912 |            1.000000 |              4 |     False | 2024-02-15 16:32:45.285 UTC |
| child_tag          | varchar      | 7,121,912 |            1.000000 |        6917077 |     False | 2024-02-15 16:32:45.285 UTC |
| child_breed        | varchar      | 7,121,912 |            1.000000 |            275 |     False | 2024-02-15 16:32:45.285 UTC |
| child_reg_date     | timestamp(6) | 7,121,912 |            0.425126 |        2910787 |     False | 2024-02-15 16:32:45.285 UTC |
| dam_id             | varchar      | 7,121,912 |            1.000000 |        3597583 |     False | 2024-02-15 16:32:45.285 UTC |
| dam_sex            | varchar      | 7,121,912 |            1.000000 |              3 |     False | 2024-02-15 16:32:45.285 UTC |
| dam_tag            | varchar      | 7,121,912 |            1.000000 |        3324532 |     False | 2024-02-15 16:32:45.285 UTC |
| dam_breed          | varchar      | 7,121,912 |            1.000000 |            262 |     False | 2024-02-15 16:32:45.285 UTC |
| dam_total_children | bigint       | 7,121,912 |            1.000000 |             35 |     False | 2024-02-15 16:32:45.285 UTC |
| dam_dob            | timestamp(6) | 7,121,912 |            1.000000 |          13518 |     False | 2024-02-15 16:32:45.285 UTC |
{% enddocs %}
