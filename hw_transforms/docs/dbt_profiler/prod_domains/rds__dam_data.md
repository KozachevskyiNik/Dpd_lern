{% docs dbt_profiler_results__prod_domains_rds__dam_data  %}
| column_name        | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 6,578,505 |              1.0000 |              4 |     False | 2023-10-26 15:19:48.527 UTC |
| child_id           | varchar      | 6,578,505 |              1.0000 |        6578505 |      True | 2023-10-26 15:19:48.527 UTC |
| child_dob          | timestamp(6) | 6,578,505 |              1.0000 |          12274 |     False | 2023-10-26 15:19:48.527 UTC |
| species            | varchar      | 6,578,505 |              1.0000 |              2 |     False | 2023-10-26 15:19:48.527 UTC |
| child_sex          | varchar      | 6,578,505 |              1.0000 |              4 |     False | 2023-10-26 15:19:48.527 UTC |
| child_tag          | varchar      | 6,578,505 |              1.0000 |        6406615 |     False | 2023-10-26 15:19:48.527 UTC |
| child_breed        | varchar      | 6,578,505 |              1.0000 |            263 |     False | 2023-10-26 15:19:48.527 UTC |
| child_reg_date     | timestamp(6) | 6,578,505 |              0.4373 |        2772724 |     False | 2023-10-26 15:19:48.527 UTC |
| dam_id             | varchar      | 6,578,505 |              1.0000 |        3306836 |     False | 2023-10-26 15:19:48.527 UTC |
| dam_sex            | varchar      | 6,578,505 |              1.0000 |              3 |     False | 2023-10-26 15:19:48.527 UTC |
| dam_tag            | varchar      | 6,578,505 |              1.0000 |        3077637 |     False | 2023-10-26 15:19:48.527 UTC |
| dam_breed          | varchar      | 6,578,505 |              1.0000 |            256 |     False | 2023-10-26 15:19:48.527 UTC |
| dam_total_children | bigint       | 6,578,505 |              1.0000 |             33 |     False | 2023-10-26 15:19:48.527 UTC |
| dam_dob            | timestamp(6) | 6,578,505 |              1.0000 |          13369 |     False | 2023-10-26 15:19:48.527 UTC |
{% enddocs %}
