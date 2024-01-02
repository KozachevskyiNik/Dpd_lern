{% docs dbt_profiler_results__prod_domains_rds__dam_data  %}
| column_name        | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 6,795,060 |            1.000000 |              4 |     False | 2024-01-02 09:52:26.344 UTC |
| child_id           | varchar      | 6,795,060 |            1.000000 |        6795060 |      True | 2024-01-02 09:52:26.344 UTC |
| child_dob          | timestamp(6) | 6,795,060 |            1.000000 |          12351 |     False | 2024-01-02 09:52:26.344 UTC |
| species            | varchar      | 6,795,060 |            1.000000 |              2 |     False | 2024-01-02 09:52:26.344 UTC |
| child_sex          | varchar      | 6,795,060 |            1.000000 |              4 |     False | 2024-01-02 09:52:26.344 UTC |
| child_tag          | varchar      | 6,795,060 |            1.000000 |        6608928 |     False | 2024-01-02 09:52:26.344 UTC |
| child_breed        | varchar      | 6,795,060 |            1.000000 |            271 |     False | 2024-01-02 09:52:26.344 UTC |
| child_reg_date     | timestamp(6) | 6,795,060 |            0.427408 |        2799387 |     False | 2024-01-02 09:52:26.344 UTC |
| dam_id             | varchar      | 6,795,060 |            1.000000 |        3443790 |     False | 2024-01-02 09:52:26.344 UTC |
| dam_sex            | varchar      | 6,795,060 |            1.000000 |              3 |     False | 2024-01-02 09:52:26.344 UTC |
| dam_tag            | varchar      | 6,795,060 |            1.000000 |        3191942 |     False | 2024-01-02 09:52:26.344 UTC |
| dam_breed          | varchar      | 6,795,060 |            1.000000 |            262 |     False | 2024-01-02 09:52:26.344 UTC |
| dam_total_children | bigint       | 6,795,060 |            1.000000 |             34 |     False | 2024-01-02 09:52:26.344 UTC |
| dam_dob            | timestamp(6) | 6,795,060 |            1.000000 |          13410 |     False | 2024-01-02 09:52:26.344 UTC |
{% enddocs %}
