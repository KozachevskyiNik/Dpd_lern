{% docs dbt_profiler_results__prod_domains_rds__dam_data  %}
| column_name        | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 6,979,872 |            1.000000 |              4 |     False | 2024-01-31 13:56:02.860 UTC |
| child_id           | varchar      | 6,979,872 |            1.000000 |        6979872 |      True | 2024-01-31 13:56:02.860 UTC |
| child_dob          | timestamp(6) | 6,979,872 |            1.000000 |          12415 |     False | 2024-01-31 13:56:02.860 UTC |
| species            | varchar      | 6,979,872 |            1.000000 |              2 |     False | 2024-01-31 13:56:02.860 UTC |
| child_sex          | varchar      | 6,979,872 |            1.000000 |              4 |     False | 2024-01-31 13:56:02.860 UTC |
| child_tag          | varchar      | 6,979,872 |            1.000000 |        6780926 |     False | 2024-01-31 13:56:02.860 UTC |
| child_breed        | varchar      | 6,979,872 |            1.000000 |            272 |     False | 2024-01-31 13:56:02.860 UTC |
| child_reg_date     | timestamp(6) | 6,979,872 |            0.421361 |        2834101 |     False | 2024-01-31 13:56:02.860 UTC |
| dam_id             | varchar      | 6,979,872 |            1.000000 |        3538356 |     False | 2024-01-31 13:56:02.860 UTC |
| dam_sex            | varchar      | 6,979,872 |            1.000000 |              3 |     False | 2024-01-31 13:56:02.860 UTC |
| dam_tag            | varchar      | 6,979,872 |            1.000000 |        3272334 |     False | 2024-01-31 13:56:02.860 UTC |
| dam_breed          | varchar      | 6,979,872 |            1.000000 |            263 |     False | 2024-01-31 13:56:02.860 UTC |
| dam_total_children | bigint       | 6,979,872 |            1.000000 |             35 |     False | 2024-01-31 13:56:02.860 UTC |
| dam_dob            | timestamp(6) | 6,979,872 |            1.000000 |          13467 |     False | 2024-01-31 13:56:02.860 UTC |
{% enddocs %}
